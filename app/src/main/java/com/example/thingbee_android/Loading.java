package com.example.thingbee_android;

import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.widget.ImageView;

import androidx.appcompat.app.AppCompatActivity;

import com.bumptech.glide.Glide;

public class Loading extends AppCompatActivity {
    ImageView bg;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_loading);

        Handler hd = new Handler();
        hd.postDelayed(new splashhandler(), 3000); // 1초 후에 hd handler 실행  3000ms = 3초
        bg = findViewById(R.id.imageView);
        //String gifURL = "https://media.giphy.com/media/hPPx8yk3Bmqys/source.gif";
        String gifURL = "https://data.whicdn.com/images/328989002/original.gif";
      //  https://weheartit.com/entry/328989002
        //glide로 GIF 불러오기
        Glide.with(this).load(gifURL).into(bg);
    }

    private class splashhandler implements Runnable{
        public void run(){
            startActivity(new Intent(getApplication(), MainActivity.class)); //로딩이 끝난 후, ChoiceFunction 이동
            Loading.this.finish(); // 로딩페이지 Activity stack에서 제거
        }
    }

    @Override
    public void onBackPressed() {
        //초반 플래시 화면에서 넘어갈때 뒤로가기 버튼 못누르게 함
    }

}
