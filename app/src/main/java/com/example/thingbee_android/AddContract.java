package com.example.thingbee_android;

import android.content.SharedPreferences;
import android.os.Bundle;
import android.view.MenuItem;
import android.view.View;
import android.widget.TextView;
import android.widget.Toast;

import androidx.annotation.NonNull;
import androidx.appcompat.app.AppCompatActivity;

public class AddContract extends AppCompatActivity {
    private TextView textView;
    private SharedPreferences sharedPreferences;
    private SharedPreferences.Editor editor;

    public static final String SHARED_PREFS = "contracts";
    public static final String PHONENUMBER = "phoneNumber";

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_add_contract);
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        getSupportActionBar().setTitle("연락처 등록");

        //SharedPreference 초기화(여기에 전화번호 값을 저장함)
        //SHARED_PREFS
        sharedPreferences = getSharedPreferences(SHARED_PREFS, MODE_PRIVATE);
        editor = sharedPreferences.edit();

        textView = findViewById(R.id.phoneNumber);
    }

    @Override
    public boolean onOptionsItemSelected(@NonNull MenuItem item) {
        // 뒤로가기 버튼 눌렀을때 처리
        switch (item.getItemId()) {
            case android.R.id.home:
                Toast.makeText(getApplicationContext(), "이전화면으로 돌아가기", Toast.LENGTH_LONG).show();
                super.onBackPressed();
                return true;
            default:
                return super.onOptionsItemSelected(item);
        }
    }

    public void onClick(View view) {
        switch (view.getId()) {
            case (R.id.confirmBtn):
                saveData();
                super.onBackPressed();
                break;
            case (R.id.cancleBtn):
                super.onBackPressed();
                break;
        }

    }

    public void saveData() {
        editor.putString(PHONENUMBER, textView.getText().toString());
        editor.apply();
        editor.commit();
        Toast.makeText(this, textView.getText(), Toast.LENGTH_LONG).show();
    }
}
