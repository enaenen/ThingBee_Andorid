package com.example.thingbee_android.fragment;


import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

import androidx.fragment.app.Fragment;

import com.example.thingbee_android.FakeCall;
import com.example.thingbee_android.R;
import com.google.android.material.floatingactionbutton.FloatingActionButton;


/**
 * A simple {@link Fragment} subclass.
 */
public class EmergencyButtonFragment extends Fragment {

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        View view = inflater.inflate(R.layout.fragment_emergency_button, container, false);
        FloatingActionButton button = view.findViewById(R.id.emergencyBtn);
        View.OnClickListener l = new View.OnClickListener(){
            @Override
            public void onClick(View v) {
                startActivity(new Intent(getContext(), FakeCall.class));
            }
        };
        button.setOnClickListener(l);
        return view;
    }

}
