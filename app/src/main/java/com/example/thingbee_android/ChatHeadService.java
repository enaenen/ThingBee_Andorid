package com.example.thingbee_android;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.graphics.PixelFormat;
import android.os.Build;
import android.os.IBinder;
import android.view.Gravity;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowManager;
import android.widget.ImageView;

public class ChatHeadService extends Service {

    private View chatHeadView;
    private WindowManager windowManager;
    private WindowManager.LayoutParams params;

    private View.OnTouchListener touchListener = new View.OnTouchListener() {
        @Override
        public boolean onTouch(View view, MotionEvent motionEvent) {

            if(motionEvent.isButtonPressed(R.id.emergencyButton)){

            }

            if (motionEvent.getAction() == MotionEvent.ACTION_DOWN) {
                return true;
            }

            if (motionEvent.getAction() == MotionEvent.ACTION_UP) {

                if(params.x < 500){
                    params.x = 0;
                }
                else{
                    params.x = 2000;
                }

                windowManager.updateViewLayout(chatHeadView, params);
                return true;
            }

            if (motionEvent.getAction() == MotionEvent.ACTION_MOVE) {
                params.x = (int)(motionEvent.getRawX()-33);
                params.y = (int)(motionEvent.getRawY()-33);

                windowManager.updateViewLayout(chatHeadView, params);

                return true;
            }
            return false;
        }
    };

    @Override
    public void onCreate() {
        super.onCreate();

        LayoutInflater mInflater = (LayoutInflater) getSystemService(Context.LAYOUT_INFLATER_SERVICE);
        chatHeadView = mInflater.inflate(R.layout.chathead_bubble, null);

        if (Build.VERSION.SDK_INT < Build.VERSION_CODES.O) {
            params = new WindowManager.LayoutParams(
                    WindowManager.LayoutParams.WRAP_CONTENT,
                    WindowManager.LayoutParams.WRAP_CONTENT,
                    WindowManager.LayoutParams.TYPE_PHONE,
                    WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE,
                    PixelFormat.TRANSLUCENT);
        } else {
            params = new WindowManager.LayoutParams(
                    WindowManager.LayoutParams.WRAP_CONTENT,
                    WindowManager.LayoutParams.WRAP_CONTENT,
                    WindowManager.LayoutParams.TYPE_APPLICATION_OVERLAY,
                    WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE,
                    PixelFormat.TRANSLUCENT);
        }

        params.gravity = Gravity.TOP | Gravity.LEFT;
        params.x = 0;
        params.y = 100;

        windowManager = (WindowManager) getSystemService(WINDOW_SERVICE);
        windowManager.addView(chatHeadView, params);

        ImageView chatheadImage = chatHeadView.findViewById(R.id.chathead_image);
        chatheadImage.setOnTouchListener(touchListener);

        chatheadImage.setOnClickListener(new View.OnClickListener() {

            @Override
            public void onClick(View view) {

                System.out.println("???????????????????????????????터치?????????????????????/");
                startActivity(new Intent(view.getContext(), FakeCall.class));
            }
        });
    }

    @Override
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override
    public void onDestroy(){
        super.onDestroy();
        if(chatHeadView!=null){
            windowManager.removeView(chatHeadView);
        }
    }
}
