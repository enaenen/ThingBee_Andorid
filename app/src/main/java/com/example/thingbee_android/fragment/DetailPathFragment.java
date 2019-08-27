package com.example.thingbee_android.fragment;

import android.content.Context;
import android.graphics.Color;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.ListView;
import android.widget.TextView;

import androidx.fragment.app.Fragment;

import com.example.thingbee_android.FragmentMap;
import com.example.thingbee_android.MapMain;
import com.example.thingbee_android.PathAdapter;
import com.example.thingbee_android.R;
import com.example.thingbee_android.vo.PathInfo;

import java.util.ArrayList;
import java.util.List;

import static com.example.thingbee_android.FragmentMap.SAFE_PATH;
import static com.example.thingbee_android.FragmentMap.SHORTEST_PATH;

public class DetailPathFragment extends Fragment {//implements MapMain.OnBackKeyPressedListener {

    private TextView mode;
    private TextView time;
    private TextView distance;

    private List<PathInfo> dataset;
    private ListView listView;
    private ArrayAdapter<PathInfo> adapter;
    private PathAdapter pathAdapter;

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        ViewGroup rootView = (ViewGroup) inflater.inflate(R.layout.fragment_detailpath_list, container, false);

        mode = rootView.findViewById(R.id.fragment_mode);
        time = rootView.findViewById(R.id.fragment_time);
        distance = rootView.findViewById(R.id.fragment_distance);

        dataset = new ArrayList<>();
        listView = rootView.findViewById(R.id.placeView);
        pathAdapter = new PathAdapter(dataset, getActivity().getApplicationContext());
        listView.setAdapter(pathAdapter);


//        adapter = new ArrayAdapter<>(getActivity(),android.R.layout.simple_list_item_1,dataset);
//        listView.setAdapter(adapter);

        // 아이템에 클릭 이벤트 처리
        listView.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            // adapterView : 아이템이 포함된 부모 뷰: 리스트뷰
            // view : 클릭된 아이템
            // i : 선택된 항목의 번호 ( position )
            // l : 일반적으로 position과 같은 개념 ( id )
            @Override
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long l) {
                ((FragmentMap)getParentFragment()).searchAroundFacility(i,mode.getText().toString());
            }
        });

        return rootView;
    }

    // 상세 경로 내용 바꾸기
    public void changePath(List<Parcelable> path, Bundle bundle, String safeMode) {
        dataset.clear();
        int time;
        int minuteSum;
        int distance;
        if(safeMode.equals(SHORTEST_PATH)){
            mode.setText(SHORTEST_PATH);
            time = bundle.getInt("time");
            distance = bundle.getInt("distance");
            this.time.setTextColor(Color.RED);
        }
        else {
            mode.setText(SAFE_PATH);
            time = bundle.getInt("safeTime");
            distance = bundle.getInt("safeDistance");
            this.time.setTextColor(Color.BLUE);
        }
        minuteSum = time >= 60 ? time / 60 : 1;  // 총 시간으로 총 분으로 바꾸고 1분 미만은 무조건 1분으로

        // 1시간 이상이면 형식 바꿔주기
        if (minuteSum >= 60) {
            this.time.setText((minuteSum / 60) + "시간 " + (minuteSum % 60) + "분");
        } else {
            this.time.setText(minuteSum + "분");
        }

        // 1km 이상이면 형식 바꿔주기
        if (distance >= 1000) {
            this.distance.setText((distance / 1000) + "." + ((distance % 1000) / 100) + "km");
        } else {
            this.distance.setText(distance + "m");
        }

        for (Parcelable p : path) {
            dataset.add((PathInfo) p);
        }

        pathAdapter.notifyDataSetChanged();

       // ((MapMain) getActivity()).pushOnBackKeyPressedListener(this);
    }

//    @Override
//    public void onBack() {
//        getFragmentManager().popBackStack();
//    }

    @Override
    public void onStart() {
        Log.d("DetailPathFragment", "onStart");
        super.onStart();
    }

    @Override
    public void onAttach(Context context) {
        Log.d("PlaceFrament", "onStart");
        super.onAttach(context);
    }

    @Override
    public void onResume() {
        Log.d("DetailPathFragment", "onResue");
        super.onResume();
    }

    @Override
    public void onPause() {
        Log.d("DetailPathFragment", "onPause");
        super.onPause();
    }

    @Override
    public void onStop() {
        Log.d("DetailPathFragment", "onStop");
        super.onStop();
    }

    @Override
    public void onDestroyView() {
        Log.d("DetailPathFragment", "onDestroyView");
        super.onDestroyView();
    }

    @Override
    public void onDetach() {
        Log.d("DetailPathFragment", "onDetach");
        super.onDetach();
    }
}
