package com.example.ararmsettings;

import android.content.SharedPreferences;
import android.os.Bundle;
import android.util.Log;
import android.view.MenuItem;
import android.widget.Toast;

import androidx.annotation.NonNull;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.app.AppCompatActivity;
import androidx.preference.Preference;
import androidx.preference.PreferenceFragmentCompat;
import androidx.preference.PreferenceManager;

public class SettingsActivity extends AppCompatActivity implements Preference.OnPreferenceChangeListener {

    public static final String SHARED_PREFS = "alarm_setting";
    public static final String BUTTONSETTING = "button_set";

    private SharedPreferences sharedPreferences;
    private SharedPreferences.Editor editor;
    private SettingsFragment settingsFragment;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.settings_activity);
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        getSupportActionBar().setTitle("비상 호출 설정");
        getSupportFragmentManager()
                .beginTransaction()
                .replace(R.id.settings, new SettingsFragment())
                .commit();

        ActionBar actionBar = getSupportActionBar();
        if (actionBar != null) {
            actionBar.setDisplayHomeAsUpEnabled(true);
        }
//        settingsFragment = new SettingsFragment();
//        getFragmentManager().beginTransaction()
//                .replace(R.id.settings, new SettingsFragment())
//                .commit();
//        sharedPreferences = PreferenceManager.getDefaultSharedPreferences(this);
        //sharedPreferences.setOnPreferenceChangeListener(...);
    }

    @Override
    protected void onResume() {
        super.onResume();
       // getPreferenceManager().getSharedPreferences().registerOnSharedPreferenceChangeListener(this);

    }
    //    @Override
//    public void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String key) {
//        System.out.println("fuck");
//        if (key.equals("btn_maps")) {
//            Log.i("PreferenceChange", "Preference value was updated to: " + sharedPreferences.getString(key, ""));
//        }
//    }

    private Preference.OnPreferenceChangeListener onPreferenceChangeListener = new Preference.OnPreferenceChangeListener(){
        @Override
        public boolean onPreferenceChange(Preference preference, Object newValue) {
            return true;
        }
    };
    private void setOnPreferenceChange(Preference mPreference) {
        mPreference.setOnPreferenceChangeListener(onPreferenceChangeListener);

        onPreferenceChangeListener.onPreferenceChange(mPreference,
                PreferenceManager.getDefaultSharedPreferences(mPreference.getContext()).getString(mPreference.getKey(), ""));
    }

    @Override
    public boolean onPreferenceChange(Preference preference, Object newValue) {
        return false;
    }


    public static class SettingsFragment extends PreferenceFragmentCompat {
        @Override
        public void onCreatePreferences(Bundle savedInstanceState, String rootKey) {
            setPreferencesFromResource(R.xml.root_preferences, rootKey);
        }

    }
    @Override
    public boolean onOptionsItemSelected(@NonNull MenuItem item) {
        switch (item.getItemId()) {
            case android.R.id.home:
                Toast.makeText(getApplicationContext(), "이전화면으로 돌아가기", Toast.LENGTH_LONG).show();
                super.onBackPressed();
                return true;
            default:
                return super.onOptionsItemSelected(item);

        }
    }
}