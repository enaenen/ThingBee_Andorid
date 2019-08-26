package com.example.thingbee_android;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.graphics.PixelFormat;
import android.os.Build;
import android.os.IBinder;
import android.view.GestureDetector;
import android.view.Gravity;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowManager;
import android.widget.ImageView;

public class ChatHeadService extends Service {

    private GestureDetector gestureDetector;
    private View chatHeadView;
    private WindowManager windowManager;
    private WindowManager.LayoutParams params;

    private View.OnTouchListener touchListener = new View.OnTouchListener() {
        @Override
        public boolean onTouch(View view, MotionEvent motionEvent) {

            gestureDetector.onTouchEvent(motionEvent);

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
                params.x = (int)(motionEvent.getRawX()-100);
                params.y = (int)(motionEvent.getRawY()-170);

                windowManager.updateViewLayout(chatHeadView, params);

                return true;
            }
            return true;
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

        gestureDetector = new GestureDetector(getApplicationContext(), new GestureDetector.OnGestureListener() {
            @Override
            public boolean onDown(MotionEvent motionEvent) {
                return true;
            }

            @Override
            public void onShowPress(MotionEvent motionEvent) {
                return ;
            }

            @Override
            public boolean onSingleTapUp(MotionEvent motionEvent) {
                if(MainActivity.isEmergencyActive){
                    return false;
                }else{
                    MainActivity.isEmergencyActive=true;
                    startActivity(new Intent(getApplicationContext(), FakeCall.class).addFlags(Intent.FLAG_ACTIVITY_NEW_TASK));
                    return true;
                }
            }

            @Override
            public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent1, float v, float v1) {
                return false;
            }

            @Override
            public void onLongPress(MotionEvent motionEvent) {

            }

            @Override
            public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent1, float v, float v1) {
                return false;
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
