package com.example.thingbee_android;


import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.os.Bundle;

import androidx.fragment.app.Fragment;
import androidx.preference.PreferenceManager;

import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;


/**
 * A simple {@link Fragment} subclass.
 */
public class FragmentPrototype extends Fragment {

    //비상호출
    private boolean emActive;
    private long pressedTime = 0;

    private SharedPreferences sharedPreferences;

    private static int counter;

    public FragmentPrototype() {
        // Required empty public constructor
    }


    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        View view =inflater.inflate(R.layout.fragment_prototype, container, false);

        //비상호출 셋팅에서 설정했던 값을 읽어오기 위한 SharedPreference 설정
        // sharedPreferences = getSharedPreferences(SHARED_PREFS, MODE_PRIVATE);
        // editor = sharedPreferences.edit();
        sharedPreferences = PreferenceManager.getDefaultSharedPreferences(getContext());
        boolean mapbtn = sharedPreferences.getBoolean("btn_maps", false);
        boolean newsbtn = sharedPreferences.getBoolean("btn_news", false);
        boolean statsbtn = sharedPreferences.getBoolean("btn_stats", false);
        boolean pathbtn = sharedPreferences.getBoolean("btn_path", false);
        emActive = sharedPreferences.getBoolean("emergency", false);

        //리시버
        IntentFilter filter = new IntentFilter(Intent.ACTION_SCREEN_ON);
        filter.addAction(Intent.ACTION_SCREEN_OFF);
        filter.addAction(Intent.ACTION_USER_PRESENT);


        return view;
    }

    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.buttonSettings:
                startActivity(new Intent(getContext(), SettingsActivity.class));
                break;
            case R.id.buttonFakeCall:
                startActivity(new Intent(getContext(), FakeCall.class));
                break;
            case R.id.buttonNews:
                startActivity(new Intent(getContext(), NewsActivity.class));
                break;
            case R.id.buttonStats:
                startActivity(new Intent(getContext(), StatsActivity.class));
                break;
            case R.id.buttonMaps:
                startActivity(new Intent(getContext(), MapMain.class));
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
                    startActivity(new Intent(getContext(), FakeCall.class));
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
