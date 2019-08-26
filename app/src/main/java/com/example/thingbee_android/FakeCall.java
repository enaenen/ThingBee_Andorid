package com.example.thingbee_android;

import android.Manifest;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.provider.Settings;
import android.view.KeyEvent;
import android.view.View;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;

import androidx.annotation.NonNull;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;
import androidx.preference.PreferenceManager;

public class FakeCall extends AppCompatActivity {

    public static final String SHARED_PREFS = "contracts";
    public static final String PHONENUMBER = "phoneNumber";
    public static final String DEFAULT_NUMBER = "112";

    private final int COUNT_DOWN_TIME = 1;
    private final int REQUEST_CALL_PHONE = 2;

    private MediaPlayer player;

    private TextView countDownNumber;
    private TextView countDownText;
    private ImageButton cancel_call;
    private ImageButton accept_call;
    private ImageButton linkCall;
    private ImageButton link112;
    private ImageButton stopCall;

    private String temp;
    private int count;
    private String tel;

    private Thread countDownThread;

    private Handler handler= new Handler(){
        @Override
        public void handleMessage(@NonNull Message msg) {
            switch(msg.what){
                case COUNT_DOWN_TIME :
                    //카운트 다운시, text뿌리기

                    countDownNumber.setText( msg.arg1+"");
                    //카운트 다운 종료시, 버튼 활성화 및 기타 textView visible false
                    if(msg.arg1 == 0){
                        switchBell(true);
                        accept_call.setImageResource(R.drawable.accept_call_125);
                    }
                    break;
            }
        }
    };

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_fake_call);

        countDownText = findViewById(R.id.countDownText);
        countDownNumber = findViewById(R.id.countDownNumber);
        accept_call = findViewById(R.id.accept_call);
        cancel_call = findViewById(R.id.cancel_call);

        //카운트 다운 스레드 실행
        SharedPreferences sharedPreferences =
                PreferenceManager.getDefaultSharedPreferences(this);
        temp = sharedPreferences.getString("fakecall","2");
        count=Integer.parseInt(temp);


        //토스트 뿌리기
        if(count != 0){
            countDown();
            accept_call.setClickable(false);
        }

        if(-1 < count && count<4){
            Toast.makeText(this,"페이크 콜이 실행됩니다.",Toast.LENGTH_SHORT).show();
        }
        else if( 3 < count){
            Toast.makeText(this, "페이크 콜이 실행됩니다.",Toast.LENGTH_LONG).show();
        }

        player = MediaPlayer.create(this, Settings.System.DEFAULT_RINGTONE_URI);
    }


    public void onClick(View view){

        switchBell(false);

        switch(view.getId()){
            case R.id.accept_call:
                switchButton();
                break;
            case R.id.cancel_call:
                //이전 페이지로 이동
                MainActivity.isEmergencyActive=false;
                super.onBackPressed();
                break;
            case R.id.link_112:
                tel = "112";
                tel ="tel: "+tel;
                checkPermission(R.id.link_112);

                break;
            case R.id.link_call:
                SharedPreferences sharedPreferences = getSharedPreferences(SHARED_PREFS, MODE_PRIVATE);
                tel = sharedPreferences.getString(PHONENUMBER,DEFAULT_NUMBER);
                //tel = "01051411031";
                tel ="tel: "+tel;
                checkPermission(R.id.link_call);

                break;
            case R.id.stop_call:
                MainActivity.isEmergencyActive=false;
                super.onBackPressed();
                //비상 호출 종료
                break;
        }
    }

    private void switchBell(boolean flag){
        if(flag){
            player.start();
        }else{
            player.stop();
        }
    }

    private void countDown(){
        countDownThread = new Thread(new Runnable() {
            @Override
            public void run() {
                for (int i = count; 0 <= i; i--) {
                    sendMessage(i);
                    if(i != 0){
                        try {
                            Thread.sleep(1000);
                        } catch (Exception e) {
                            System.out.println("COUNT DOWN THREAD ERROR");
                            e.printStackTrace();
                        }
                    }
                }
                countDownNumber.setVisibility(View.INVISIBLE);
                countDownText.setVisibility(View.INVISIBLE);
                accept_call.setClickable(true);
            }
        });

        countDownThread.setDaemon(true);
        countDownThread.start();
    }

    private void sendMessage(int index){
        Message returnMsg = new Message();
        returnMsg.what = COUNT_DOWN_TIME;
        returnMsg.arg1 = index;
        handler.sendMessage(returnMsg);
    }

    private void switchButton(){
        cancel_call.setVisibility(ImageView.INVISIBLE);
        accept_call.setVisibility(ImageView.INVISIBLE);

        linkCall = findViewById(R.id.link_call);
        link112 = findViewById(R.id.link_112);
        stopCall = findViewById(R.id.stop_call);

        linkCall.setVisibility(ImageView.VISIBLE);
        link112.setVisibility(ImageView.VISIBLE);
        stopCall.setVisibility(ImageView.VISIBLE);
    }

    @Override
    public void onRequestPermissionsResult(int requestCode, @NonNull String[] permissions, @NonNull int[] grantResults) {
        switch(requestCode){
            case REQUEST_CALL_PHONE:
                if(grantResults.length> 0 && grantResults[0] == PackageManager.PERMISSION_GRANTED){
                    try{
                        startActivity(new Intent(Intent.ACTION_CALL, Uri.parse(tel)));
                    }catch(SecurityException e){
                        e.printStackTrace();
                    }
                }
        }
    }

    private void checkPermission(int id){
        if(ContextCompat.checkSelfPermission(this, Manifest.permission.CALL_PHONE) == PackageManager.PERMISSION_GRANTED){
            MainActivity.isEmergencyActive=false;
            startActivity(new Intent(Intent.ACTION_CALL,Uri.parse(tel)));
        }else{
            try {
                String[] perm = {Manifest.permission.CALL_PHONE};
                ActivityCompat.requestPermissions(this, perm, REQUEST_CALL_PHONE);
            }catch(SecurityException e){
                Toast.makeText(this, e.getMessage(),Toast.LENGTH_LONG).show();
            }
        }
    }
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        return false;
    }
    @Override
    public void onBackPressed() {
        MainActivity.isEmergencyActive=false;
        player.stop();
        this.finish();
        super.onBackPressed();
        //뒤로가기 버튼 누르면 소리 울리는player 중지
    }
}
