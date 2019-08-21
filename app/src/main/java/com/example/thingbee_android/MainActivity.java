package com.example.thingbee_android;

import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import androidx.preference.PreferenceManager;

import android.content.Intent;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
import android.view.MenuItem;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;

public class MainActivity extends AppCompatActivity implements MenuTopbar.OnFragmentInteractionListener {
    private TextView textView;
    private Button settings;
    private Button submit;
    private Button buttonFakeCall;


    private SharedPreferences sharedPreferences;
    private SharedPreferences.Editor editor;
    private String value;

    public static final String SHARED_PREFS = "contracts";
    public static final String PHONENUMBER = "phoneNumber";

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
       // getSupportActionBar().setTitle("메인화면");
        Toolbar tb = findViewById(R.id.app_toolbar);
        setSupportActionBar(tb) ;

        textView = findViewById(R.id.textView);
        submit = findViewById(R.id.buttonSubmit);

        sharedPreferences = getSharedPreferences(SHARED_PREFS, MODE_PRIVATE);
        editor = sharedPreferences.edit();
                PreferenceManager.getDefaultSharedPreferences(this /* Activity context */);
        boolean mapbtn = sharedPreferences.getBoolean("btn_maps",false);
        boolean newsbtn = sharedPreferences.getBoolean("btn_news",false);
        boolean statsbtn = sharedPreferences.getBoolean("btn_stats",false);
        boolean pathbtn = sharedPreferences.getBoolean("btn_path",false);

        System.out.println("map 버튼  : " + mapbtn);
        System.out.println("news 버튼  : " + newsbtn);
        System.out.println("stats 버튼  : " + statsbtn);
        System.out.println("path 버튼  : " + pathbtn);


        //탑 뷰 프래그먼트
        FragmentTransaction fragmentTransaction = getSupportFragmentManager().beginTransaction();
        MenuTopbar topbar= new MenuTopbar();
        fragmentTransaction.add(R.id.topbar_container, topbar);
        fragmentTransaction.commit();
    }

    public void onClick(View view) {
        switch(view.getId()){
            case R.id.buttonSettings:
                startActivity(new Intent(this, SettingsActivity.class));
                break;
            case R.id.buttonSubmit:
                value = sharedPreferences.getString(PHONENUMBER,"Data Not Found");
                Toast.makeText(MainActivity.this, value, Toast.LENGTH_LONG).show();
                textView.setText(value);
                break;
            case R.id.buttonFakeCall:
                startActivity(new Intent(this, FakeCall.class));
                break;
            case R.id.buttonNews:
                startActivity(new Intent(this, NewsActivity.class));
                break;
            case R.id.buttonStats:
                startActivity(new Intent(this, StatsActivity.class));
                break;
            case R.id.buttonMaps:
                startActivity(new Intent(this, MapMain.class));
                break;
        }
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        switch (item.getItemId()) {
            case R.id.action_search :
                ((TextView)findViewById(R.id.textView)).setText("SEARCH") ;
                return true ;
            case R.id.action_account :
                ((TextView)findViewById(R.id.textView)).setText("ACCOUNT") ;
                return true ;
            case R.id.action_settings :
                ((TextView)findViewById(R.id.textView)).setText("SETTINGS") ;
                return true ;
            default :
                return super.onOptionsItemSelected(item) ;
        }
    }


    @Override
    public void onFragmentInteraction(Uri uri) {

    }


}
