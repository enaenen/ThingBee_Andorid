package com.example.thingbee_android;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.provider.Settings;
import android.view.KeyEvent;
import android.view.View;
import android.widget.Button;
import android.widget.ImageButton;
import android.widget.TextView;
import android.widget.Toast;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
import androidx.fragment.app.FragmentManager;
import androidx.preference.PreferenceManager;
import androidx.viewpager.widget.ViewPager;

import com.example.thingbee_android.fragment.EmergencyButtonFragment;
import com.google.android.material.tabs.TabLayout;

public class MainActivity extends AppCompatActivity {
    public final static int REQUEST_CODE = 3333;
    private TextView textView;
    private Button settings;
    private Button submit;
    private Button buttonFakeCall;
    private ImageButton emergencyBtn;

    protected static boolean isEmergencyActive = false;
    private boolean mapbtn;
    //비상호출
    private boolean emActive;
    private long pressedTime = 0;
    private FragmentManager fm;
    private EmergencyButtonFragment theButton;

    private SharedPreferences sharedPreferences;
    private SharedPreferences.Editor editor;
    private String value;

    public static final String SHARED_PREFS = "contracts";
    public static final String PHONENUMBER = "phoneNumber";
    private static int counter;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        // getSupportActionBar().setTitle("메인화면");ㅍ

        //Tab View
        TabLayout tabs = findViewById(R.id.tabs);
        tabs.addTab(tabs.newTab().setText("지도").setIcon(R.drawable.menu_map_img));
        tabs.addTab(tabs.newTab().setText("뉴스").setIcon(R.drawable.menu_article_img));
        tabs.addTab(tabs.newTab().setText("통계").setIcon(R.drawable.menu_statics_img));
        tabs.addTab(tabs.newTab().setText("설정").setIcon(R.drawable.menu_option_img));
        //tabs.addTab(tabs.newTab().setText("프로토타입"));
        tabs.setTabGravity(tabs.GRAVITY_FILL);

        final ViewPager viewPager = findViewById(R.id.viewpager);
        final TabViewAdapter tabViewAdapter = new TabViewAdapter(getSupportFragmentManager(),5);
        viewPager.setAdapter(tabViewAdapter);

        //탭메뉴를 클릭하면 해당 프레그먼트로 변경-싱크화
        tabs.addOnTabSelectedListener(new TabLayout.ViewPagerOnTabSelectedListener(viewPager));
        viewPager.addOnPageChangeListener(new TabLayout.TabLayoutOnPageChangeListener(tabs));

        //끝

        textView = findViewById(R.id.textView);
        submit = findViewById(R.id.buttonSubmit);

        //비상호출 셋팅에서 설정했던 값을 읽어오기 위한 SharedPreference 설정
        // sharedPreferences = getSharedPreferences(SHARED_PREFS, MODE_PRIVATE);
        // editor = sharedPreferences.edit();
        sharedPreferences = PreferenceManager.getDefaultSharedPreferences(this /* Activity context */);

        mapbtn = sharedPreferences.getBoolean("btn_maps", true);
//        boolean newsbtn = sharedPreferences.getBoolean("btn_news", false);
//        boolean statsbtn = sharedPreferences.getBoolean("btn_stats", false);
//        boolean pathbtn = sharedPreferences.getBoolean("btn_path", false);
        emActive = sharedPreferences.getBoolean("emergency", false);

//
//        if(ContextCompat.checkSelfPermission(this, Manifest.permission.SYSTEM_ALERT_WINDOW) == PackageManager.PERMISSION_GRANTED){
//
//        }else{
//            ActivityCompat.requestPermissions(this,new String[]{Manifest.permission.SYSTEM_ALERT_WINDOW},0);
//        }

//         버튼 등장 여부
        if(mapbtn) {
            startOverlayWindowService(this);
        }
    }

    @Override
    public void onRequestPermissionsResult(int requestCode, @NonNull String[] permissions, @NonNull int[] grantResults) {
        if(grantResults.length > 0 && grantResults[0] == PackageManager.PERMISSION_GRANTED){
            try{
                startService(new Intent(MainActivity.this, ChatHeadService.class));
            }catch(SecurityException e){
                e.printStackTrace();
            }
        }
    }

    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.buttonSettings:
                startActivity(new Intent(this, SettingsActivity.class));
                break;
            case R.id.buttonNews:
                startActivity(new Intent(this, NewsActivity.class));
                break;
            case R.id.buttonStats:
                startActivity(new Intent(this, StatsActivity.class));
                break;
            case R.id.buttonMaps:
                startActivity(new Intent(this, MapMain.class));
                break;
        }
    }

    //볼륨 다운 버튼 3번을 눌렀을때 비상호출 작동
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        int nowTime;
        switch (keyCode){
            case  KeyEvent.KEYCODE_VOLUME_DOWN:
                if (emActive) {
                    counter++;
                    if (pressedTime == 0) {//현재 누른시간이 없다는것==버튼을 첫번째로 누른다는것
                        pressedTime = System.currentTimeMillis();
                    } else {//버튼이 누르는게 첫번째가 아니라면
                        nowTime = (int) (System.currentTimeMillis() - pressedTime);//지금 누른시간-맨처음버튼누른시간
                        //빼서 2초안에 다시 누른거면 인정 2초안에 누른게 아니라면 초기화
                        if (nowTime < 2000 && counter >= 3) {//2초안에 3번 볼륨다운을 눌렀을때
                            isEmergencyActive=true;
                            startActivity(new Intent(this, FakeCall.class));
                            pressedTime = 0;
                            counter = 0;
                        }else if((counter>1 )&& (nowTime<2000)){//2초안에 눌렀지만 두번눌렀을때

                        }else {//시간초과되었을때
                            pressedTime = 0;
                            counter = 0;
                        }
                    }
                }
               // System.out.println(counter);
                break;
        }
        return true;
    }

    public void startOverlayWindowService(Context context) {
        if(Build.VERSION.SDK_INT >= Build.VERSION_CODES.M){

            if(!Settings.canDrawOverlays(context)){
                Intent intent = new Intent("android.settings.action.MANAGE_OVERLAY_PERMISSION");
                intent.setData( Uri.parse("package:" + context.getPackageName()));
                intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
                startActivityForResult(intent, REQUEST_CODE);
            }else{
                context.startService(new Intent(context,ChatHeadService.class));
            }
        }
    }

    @Override
    protected void onActivityResult(int requestCode, int resultCode, @Nullable Intent data) {
        super.onActivityResult(requestCode,resultCode,data);

        if (requestCode == REQUEST_CODE) {

            if (android.os.Build.VERSION.SDK_INT >= android.os.Build.VERSION_CODES.M) {

                if (Settings.canDrawOverlays(this)) {
                    Toast.makeText(this, "오버레이 권한 확인 완료", Toast.LENGTH_SHORT).show();
                    this.startService(new Intent(this,ChatHeadService.class));
                } else {
                    Toast.makeText(this, "오버레이 권한이 없습니다.", Toast.LENGTH_LONG).show();
                }

            }
        }
    }
}
