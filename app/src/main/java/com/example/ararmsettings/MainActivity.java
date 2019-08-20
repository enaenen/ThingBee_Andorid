package com.example.ararmsettings;

import androidx.appcompat.app.AppCompatActivity;

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

    SharedPreferences preferences;
    SharedPreferences.Editor editor;
    String value;

    public static final String SHARED_PREFS = "sharedPrefs";

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
        value = preferences.getString("TEXT","Data Not Found");
    }
    public void onClick(View view) {
        switch(view.getId()){
            case R.id.buttonSettings:
                startActivity(new Intent(this, SettingsActivity.class));
                break;
            case R.id.buttonSubmit:
                //SharedPreferences sharedPreferences = getSharedPreferences("sharedPrefs", MODE_PRIVATE);
                //System.out.println(preferences.getString("sharedPrefs","none"));
                value = preferences.getString("TEXT","Data Not Found");
                Toast.makeText(MainActivity.this, value, Toast.LENGTH_LONG).show();
                textView.setText(value);
                break;
        }
    }
}
