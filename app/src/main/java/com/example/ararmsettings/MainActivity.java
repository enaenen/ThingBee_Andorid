package com.example.ararmsettings;

import androidx.appcompat.app.AppCompatActivity;
import androidx.preference.PreferenceManager;

import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.Switch;
import android.widget.TextView;
import android.widget.Toast;

public class MainActivity extends AppCompatActivity {
    TextView textView;
    Button settings;
    Button submit;
    Button buttonFakeCall;

    SharedPreferences preferences;
    SharedPreferences.Editor editor;
    String value;

    public static final String SHARED_PREFS = "contracts";

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        getSupportActionBar().setTitle("메인화면");

        textView = findViewById(R.id.textView);
        settings = findViewById(R.id.buttonSettings);
        submit = findViewById(R.id.buttonSubmit);

        preferences = getSharedPreferences(SHARED_PREFS, MODE_PRIVATE);
        editor = preferences.edit();
        value = preferences.getString("PHONENUMBER","Data Not Found");
        SharedPreferences sharedPreferences =
                PreferenceManager.getDefaultSharedPreferences(this /* Activity context */);
        boolean mapbtn = sharedPreferences.getBoolean("btn_maps",false);
        boolean newsbtn = sharedPreferences.getBoolean("btn_news",false);
        boolean statsbtn = sharedPreferences.getBoolean("btn_stats",false);
        boolean pathbtn = sharedPreferences.getBoolean("btn_path",false);

        System.out.println("map 버튼  : " + mapbtn);
        System.out.println("news 버튼  : " + newsbtn);
        System.out.println("stats 버튼  : " + statsbtn);
        System.out.println("path 버튼  : " + pathbtn);


    }
    public void onClick(View view) {
        switch(view.getId()){
            case R.id.buttonSettings:
                startActivity(new Intent(this, SettingsActivity.class));
                break;
            case R.id.buttonSubmit:
                value = preferences.getString("PHONENUMBER","Data Not Found");
                Toast.makeText(MainActivity.this, value, Toast.LENGTH_LONG).show();
                textView.setText(value);
                break;
            case R.id.buttonFakeCall:
                startActivity(new Intent(this, FakeCall.class));
        }
    }
}
