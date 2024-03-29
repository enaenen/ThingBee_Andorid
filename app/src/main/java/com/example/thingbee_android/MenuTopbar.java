package com.example.thingbee_android;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;

import androidx.fragment.app.Fragment;

import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;


/**
 * A simple {@link Fragment} subclass.
 * Activities that contain this fragment must implement the
 * {@link MenuTopbar.OnFragmentInteractionListener} interface
 * to handle interaction events.
 * Use the {@link MenuTopbar#newInstance} factory method to
 * create an instance of this fragment.
 */
public class MenuTopbar extends Fragment {
    // TODO: Rename parameter arguments, choose names that match
    // the fragment initialization parameters, e.g. ARG_ITEM_NUMBER
    private static final String ARG_PARAM1 = "param1";
    private static final String ARG_PARAM2 = "param2";

    // TODO: Rename and change types of parameters
    private String mParam1;
    private String mParam2;

    private OnFragmentInteractionListener mListener;

    public MenuTopbar() {
        // Required empty public constructor
    }

    public void onClickMenuBtn1(View view){
        Log.d("test","탑바");
    }


    /**
     * Use this factory method to create a new instance of
     * this fragment using the provided parameters.
     *
     * @param param1 Parameter 1.
     * @param param2 Parameter 2.
     * @return A new instance of fragment MenuTopbar.
     */
    // TODO: Rename and change types and number of parameters
    public static MenuTopbar newInstance(String param1, String param2) {
        MenuTopbar fragment = new MenuTopbar();
        Bundle args = new Bundle();
        args.putString(ARG_PARAM1, param1);
        args.putString(ARG_PARAM2, param2);
        fragment.setArguments(args);
        return fragment;
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        if (getArguments() != null) {
            mParam1 = getArguments().getString(ARG_PARAM1);
            mParam2 = getArguments().getString(ARG_PARAM2);
        }
    }

    @Override   //프래그먼트에 레이아웃 제공. /팽창시키고자 하는 레이아웃의 리소스/
    // 팽창된 레이아웃의 상위가 될 ViewGroup/ 팽창된 라이아웃이 팽창 중에 ViewGroup에 첨부되야하는지
    public View onCreateView(LayoutInflater inflater, final ViewGroup container,
                             Bundle savedInstanceState) {
        // Inflate the layout for this fragment
        View view=inflater.inflate(R.layout.fragment_menu_topbar, container, false);

        //menu 버튼 추가
        view.findViewById(R.id.menu_map_btn)
                .setOnClickListener(new View.OnClickListener(){
                    @Override
                    public void onClick(View view) {
                        getActivity()
                                .startActivity(new Intent(getActivity(), NewsActivity.class));
                    }
                });
        view.findViewById(R.id.menu_news_btn)
                .setOnClickListener(new View.OnClickListener(){
                    @Override
                    public void onClick(View view) {
                        getActivity()
                                .startActivity(new Intent(getActivity(), NewsActivity.class));
                    }
                });
        view.findViewById(R.id.menu_statics_btn)
                .setOnClickListener(new View.OnClickListener(){
                    @Override
                    public void onClick(View view) {
                        getActivity()
                                .startActivity(new Intent(getActivity(), StatsActivity.class));
                    }
                });
        view.findViewById(R.id.menu_settings_btn)
                .setOnClickListener(new View.OnClickListener(){
                    @Override
                    public void onClick(View view) {
                        getActivity()
                                .startActivity(new Intent(getActivity(),SettingsActivity.class));
                    }
                });


        return view;
    }

    // TODO: Rename method, update argument and hook method into UI event
    public void onButtonPressed(Uri uri) {
        if (mListener != null) {
            mListener.onFragmentInteraction(uri);
        }
    }

    @Override
    public void onAttach(Context context) {
        super.onAttach(context);
        if (context instanceof OnFragmentInteractionListener) {
            mListener = (OnFragmentInteractionListener) context;
        } else {
            throw new RuntimeException(context.toString()
                    + " must implement OnFragmentInteractionListener");
        }
    }

    @Override
    public void onDetach() {
        super.onDetach();
        mListener = null;
    }

    /**
     * This interface must be implemented by activities that contain this
     * fragment to allow an interaction in this fragment to be communicated
     * to the activity and potentially other fragments contained in that
     * activity.
     * <p>
     * See the Android Training lesson <a href=
     * "http://developer.android.com/training/basics/fragments/communicating.html"
     * >Communicating with Other Fragments</a> for more information.
     */
    public interface OnFragmentInteractionListener {
        // TODO: Update argument type and name
        void onFragmentInteraction(Uri uri);
    }
}
