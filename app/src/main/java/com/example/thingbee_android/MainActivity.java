package com.example.thingbee_android;

import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;

import androidx.appcompat.app.AppCompatActivity;
import androidx.preference.PreferenceManager;
import androidx.viewpager.widget.ViewPager;

import com.google.android.material.tabs.TabLayout;

public class MainActivity extends AppCompatActivity {
    private TextView textView;
    private Button settings;
    private Button submit;
    private Button buttonFakeCall;
    //비상호출
    private boolean emActive;
    private long pressedTime = 0;

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
        // getSupportActionBar().setTitle("메인화면");

        //Tab View

        TabLayout tabs = findViewById(R.id.tabs);
        tabs.addTab(tabs.newTab().setText("지도"));
        tabs.addTab(tabs.newTab().setText("뉴스"));
        tabs.addTab(tabs.newTab().setText("통계"));
        tabs.addTab(tabs.newTab().setText("설정"));
        tabs.addTab(tabs.newTab().setText("프로토타입"));
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
        boolean mapbtn = sharedPreferences.getBoolean("btn_maps", false);
        boolean newsbtn = sharedPreferences.getBoolean("btn_news", false);
        boolean statsbtn = sharedPreferences.getBoolean("btn_stats", false);
        boolean pathbtn = sharedPreferences.getBoolean("btn_path", false);
        emActive = sharedPreferences.getBoolean("emergency", false);



        //리시버
        IntentFilter filter = new IntentFilter(Intent.ACTION_SCREEN_ON);
        filter.addAction(Intent.ACTION_SCREEN_OFF);
        filter.addAction(Intent.ACTION_USER_PRESENT);
    }

    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.buttonSettings:
                startActivity(new Intent(this, SettingsActivity.class));
                break;
            case R.id.buttonFakeCall:
                startActivity(new Intent(this, FakeCall.class));
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
        if (emActive) {
            counter++;
            if (pressedTime == 0) {//현재 누른시간이 없다는것==버튼을 첫번째로 누른다는것
                pressedTime = System.currentTimeMillis();
            } else {//버튼이 누르는게 첫번째가 아니라면
                nowTime = (int) (System.currentTimeMillis() - pressedTime);//지금 누른시간-맨처음버튼누른시간
                //빼서 2초안에 다시 누른거면 인정 2초안에 누른게 아니라면 초기화
                if (nowTime < 2000 && counter >= 3) {//2초안에 3번 볼륨다운을 눌렀을때
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
        System.out.println(counter);
        return true;
    }
}
