package com.example.thingbee_android.fragment;

import android.os.Bundle;
import android.os.Parcelable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;

import com.example.thingbee_android.R;
import com.example.thingbee_android.vo.PathInfo;

import static com.example.thingbee_android.PathAdapter.CROSS_WORK;
import static com.example.thingbee_android.PathAdapter.CROSS_WORK_10;
import static com.example.thingbee_android.PathAdapter.CROSS_WORK_2;
import static com.example.thingbee_android.PathAdapter.CROSS_WORK_4;
import static com.example.thingbee_android.PathAdapter.CROSS_WORK_8;
import static com.example.thingbee_android.PathAdapter.CROSS_WORK_LEFT;
import static com.example.thingbee_android.PathAdapter.CROSS_WORK_RIGHT;
import static com.example.thingbee_android.PathAdapter.END;
import static com.example.thingbee_android.PathAdapter.PASS;
import static com.example.thingbee_android.PathAdapter.PASS1;
import static com.example.thingbee_android.PathAdapter.PASS2;
import static com.example.thingbee_android.PathAdapter.PASS3;
import static com.example.thingbee_android.PathAdapter.PASS4;
import static com.example.thingbee_android.PathAdapter.PASS5;
import static com.example.thingbee_android.PathAdapter.PEDE_OVERPASS;
import static com.example.thingbee_android.PathAdapter.SLOP_WAY;
import static com.example.thingbee_android.PathAdapter.STAIGHT;
import static com.example.thingbee_android.PathAdapter.STAIR;
import static com.example.thingbee_android.PathAdapter.START;
import static com.example.thingbee_android.PathAdapter.TURN_LEFT;
import static com.example.thingbee_android.PathAdapter.TURN_LEFT_10;
import static com.example.thingbee_android.PathAdapter.TURN_LEFT_8;
import static com.example.thingbee_android.PathAdapter.TURN_RIGHT;
import static com.example.thingbee_android.PathAdapter.TURN_RIGHT_2;
import static com.example.thingbee_android.PathAdapter.TURN_RIGHT_4;
import static com.example.thingbee_android.PathAdapter.UNDERGROUND;

public class PathIndexFragment extends Fragment{// implements MapMain.OnBackKeyPressedListener {

    ImageView type;
    TextView index;
    TextView description;

    @Nullable
    @Override
    public View onCreateView(@NonNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        ViewGroup rootView = (ViewGroup)inflater.inflate(R.layout.listview_path,container,false);

        type = rootView.findViewById(R.id.turnType);
        index = rootView.findViewById(R.id.pathIndex);
        description = rootView.findViewById(R.id.pathDescription);

        return rootView;
    }
    public void changePathIndex(Parcelable parcelable){
        PathInfo pathInfo = (PathInfo) parcelable;
        switch (pathInfo.getTurnType()){
            case STAIGHT :
                type.setImageResource(R.drawable.straight);
                break;
            case TURN_LEFT :
                type.setImageResource(R.drawable.turn_left);
                break;
            case TURN_RIGHT :
                type.setImageResource(R.drawable.turn_right);
                break;
            case TURN_LEFT_8 :
                type.setImageResource(R.drawable.turn_left);
                break;
            case TURN_LEFT_10 :
                type.setImageResource(R.drawable.turn_left);
                break;
            case TURN_RIGHT_2 :
                type.setImageResource(R.drawable.turn_right);
                break;
            case TURN_RIGHT_4 :
                type.setImageResource(R.drawable.turn_right);
                break;
            case PASS :
                break;
            case PASS1 :
                break;
            case PASS2 :
                break;
            case PASS3 :
                break;
            case PASS4 :
                break;
            case PASS5 :
                break;
            case PEDE_OVERPASS :
                break;
            case UNDERGROUND :
                break;
            case STAIR :
                break;
            case SLOP_WAY :
                break;
            case START :
                type.setImageResource(R.drawable.start_icon);
                break;
            case END :
                type.setImageResource(R.drawable.end_icon);
                break;
            case CROSS_WORK :
                type.setImageResource(R.drawable.cross_walk_icon);
                break;
            case CROSS_WORK_LEFT :
                type.setImageResource(R.drawable.cross_walk_icon);
                break;
            case CROSS_WORK_RIGHT :
                type.setImageResource(R.drawable.cross_walk_icon);
                break;
            case CROSS_WORK_8 :
                type.setImageResource(R.drawable.cross_walk_icon);
                break;
            case CROSS_WORK_10 :
                type.setImageResource(R.drawable.cross_walk_icon);
                break;
            case CROSS_WORK_2 :
                type.setImageResource(R.drawable.cross_walk_icon);
                break;
            case CROSS_WORK_4 :
                type.setImageResource(R.drawable.cross_walk_icon);
                break;
            default :
                break;
        }

        index.setText(pathInfo.getIndex()+"");
        description.setText(pathInfo.getDescription());
    }

  //  @Override
    public void onBack() {
        getFragmentManager().popBackStack();
    }
}
