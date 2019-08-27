package com.example.thingbee_android.fragment;

import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;

import com.example.thingbee_android.FragmentMap;
import com.example.thingbee_android.MainActivity;
import com.example.thingbee_android.R;
import com.example.thingbee_android.MapMain;

import org.w3c.dom.Text;

import static com.example.thingbee_android.FragmentMap.SAFE_PATH;
import static com.example.thingbee_android.FragmentMap.SHORTEST_PATH;

public class PathSimpleContent extends Fragment {//implements MapMain.OnBackKeyPressedListener {

    private TextView mode;    // 최단 경로, 안전 경로
    private TextView time;    // 소요 시간
    private TextView distance; // 거리
    private ImageButton detailPath; // 상세경로 버튼

    // 안전 경로 버전
    private TextView safeMode;
    private TextView safeTime;
    private TextView safeDistance;
    private ImageButton safeDetailPath;

    private String modeParam;

    @Nullable
    @Override
    public View onCreateView(@NonNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        ViewGroup rootView = (ViewGroup)inflater.inflate(R.layout.fragment_path_simple_content,container,false);
        mode = rootView.findViewById(R.id.mode);
        time = rootView.findViewById(R.id.time);
        distance = rootView.findViewById(R.id.distance);
        detailPath = rootView.findViewById(R.id.detailPath);

        safeMode = rootView.findViewById(R.id.safeMode);
        safeTime = rootView.findViewById(R.id.safeTime);
        safeDistance = rootView.findViewById(R.id.safeDistance);
        safeDetailPath = rootView.findViewById(R.id.safeDetailPath);

        detailPath.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
//                onClickPath(modeParam);
                ((FragmentMap)getParentFragment()).getDetailPath(mode.getText().toString());
            }
        });

        safeDetailPath.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                ((FragmentMap)getParentFragment()).getDetailPath(modeParam);
            }
        });
        return rootView;
    }

    public void changeSimpleContent(Bundle path){

        int time = path.getInt("time");
        int minuteSum = time >= 60 ? time/60 : 1 ;  // 총 시간으로 총 분으로 바꾸고 1분 미만은 무조건 1분으로

        int distance = path.getInt("distance");

        // 1시간 이상이면 형식 바꿔주기
        if(minuteSum >= 60){
            this.time.setText((minuteSum /60)+"시간 "+(minuteSum % 60)+"분");
        }
        else {
            this.time.setText(minuteSum +"분");
        }

        // 1km 이상이면 형식 바꿔주기
        if( distance >= 1000 ){
            this.distance.setText((distance/1000)+"."+((distance%1000)/100)+"km");
        }
        else {
            this.distance.setText(distance+"m");
        }

//        mode.setText(path.getString("mode"));
        // 안전경로 없음
        if(path.getInt("safeTime") == 0){
            this.safeTime.setText("");
            this.safeDistance.setText("");
            this.detailPath.setVisibility(View.GONE);   // 최단경로 버튼을 숨기고 안전경로 버튼을 최단경로 버튼으로 사용 ( UI를 위해서 )
            modeParam = SHORTEST_PATH;  // 안전 경로 없으면 최단 거리 버튼으로 변경
            safeMode.setText("");
        }
//       안전 경로 있음
        else {
            safeMode.setText(path.getString("safeMode"));
            modeParam = SAFE_PATH;  // 안전 경로 있으면 안전 경로 버튼으로 변경
            this.detailPath.setVisibility(View.VISIBLE);
            time = path.getInt("safeTime");
            minuteSum = time >= 60 ? time/60 : 1 ;  // 총 시간으로 총 분으로 바꾸고 1분 미만은 무조건 1분으로

            distance = path.getInt("safeDistance");

            // 1시간 이상이면 형식 바꿔주기
            if(minuteSum >= 60){
                this.safeTime.setText((minuteSum /60)+"시간 "+(minuteSum % 60)+"분");
            }
            else {
                this.safeTime.setText(minuteSum +"분");
            }

            // 1km 이상이면 형식 바꿔주기
            if( distance >= 1000 ){
                this.safeDistance.setText((distance/1000)+"."+((distance%1000)/100)+"km");
            }
            else {
                this.safeDistance.setText(distance+"m");
            }

//        safeMode.setText(path.getString("mode"));
        }



       // ((MapMain)getActivity()).pushOnBackKeyPressedListener(this);
    }

    @Override
    public void onStart() {
        Log.d("PathSimpleContent","onStart");
        super.onStart();
    }

    @Override
    public void onAttach(Context context) {
        Log.d("PlaceFrament","onStart");
        super.onAttach(context);
    }

    @Override
    public void onResume() {
        Log.d("PathSimpleContent","onResume");
        super.onResume();
    }

    @Override
    public void onPause() {
        Log.d("PathSimpleContent","onPause");
        super.onPause();
    }

    @Override
    public void onStop() {
        Log.d("PathSimpleContent","onStop");
        super.onStop();
    }

    @Override
    public void onDestroyView() {
        Log.d("PathSimpleContent","onDestroyView");
        super.onDestroyView();
    }

    @Override
    public void onDetach() {
        Log.d("PathSimpleContent","onDetach");
        super.onDetach();
    }

    //@Override
    public void onBack() {
        getFragmentManager().popBackStack();
    }
}
