package com.example.thingbee_android;


import android.app.ActivityManager;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.provider.Settings;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Toast;

import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import androidx.preference.PreferenceFragmentCompat;
import androidx.preference.PreferenceManager;


/**
 * A simple {@link Fragment} subclass.
 */
public class FragmentSettings extends Fragment {
    public final static int REQUEST_CODE = 3333;
    public static final String SHARED_PREFS = "alarm_setting";
    public static final String BUTTONSETTING = "button_set";

    private SharedPreferences sharedPreferences;
    private SharedPreferences.Editor editor;
    private SettingsActivity.SettingsFragment settingsFragment;

    public FragmentSettings() {
        // Required empty public constructor
    }

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {

        // Inflate the layout for this fragment
        View view= inflater.inflate(R.layout.fragment_settings, container, false);

        getChildFragmentManager()
                .beginTransaction()
                .replace(R.id.settings, new SettingsActivity.SettingsFragment())
                .commit();

        SharedPreferences sharedPreferences =
                PreferenceManager.getDefaultSharedPreferences(getContext());

        SharedPreferences.OnSharedPreferenceChangeListener listener = new SharedPreferences.OnSharedPreferenceChangeListener() {
            @Override
            public void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String key) {
                switch(key) {
                    case "btn_maps":
                        if(sharedPreferences.getBoolean("btn_maps", true)){

                            if(!isServiceRunning()){
                                startOverlayWindowService(getContext());
                            }
                        }else{
                            if(isServiceRunning()){
                                getContext().stopService(new Intent(getContext(),ChatHeadService.class));
                            }
                        }
                        break;
                }
            }
        };

        sharedPreferences.registerOnSharedPreferenceChangeListener(listener);


        return view;
    }

    public static class SettingsFragment extends PreferenceFragmentCompat {
        @Override
        public void onCreatePreferences(Bundle savedInstanceState, String rootKey) {
            setPreferencesFromResource(R.xml.root_preferences, rootKey);
        }
    }

    public boolean isServiceRunning(){
        ActivityManager manager = (ActivityManager) getContext().getSystemService(Context.ACTIVITY_SERVICE);

        for(ActivityManager.RunningServiceInfo service : manager.getRunningServices(Integer.MAX_VALUE)){
            if(ChatHeadService.class.getName().equals(service.service.getClassName())){
                return true;
            }
        }
        return false;
    }

    public void startOverlayWindowService(Context context) {
        if(Build.VERSION.SDK_INT >= Build.VERSION_CODES.M){

            if(!Settings.canDrawOverlays(context)){
                Intent intent = new Intent("android.settings.action.MANAGE_OVERLAY_PERMISSION");
                intent.setData( Uri.parse("package:" + context.getPackageName()));
                intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
                startActivityForResult(intent, REQUEST_CODE);
            }else{
                context.startService(new Intent(context,ChatHeadService.class));
            }
        }
    }

    @Override
    public void onActivityResult(int requestCode, int resultCode, @Nullable Intent data) {
        super.onActivityResult(requestCode,resultCode,data);

        if (requestCode == REQUEST_CODE) {

            if (android.os.Build.VERSION.SDK_INT >= android.os.Build.VERSION_CODES.M) {

                if (Settings.canDrawOverlays(getContext())) {
                    Toast.makeText(getContext(), "오버레이 권한 확인 완료", Toast.LENGTH_SHORT).show();
                    getContext().startService(new Intent(getContext(),ChatHeadService.class));
                } else {
                    Toast.makeText(getContext(), "오버레이 권한이 없습니다.", Toast.LENGTH_LONG).show();
                }

            }
        }
    }
}
