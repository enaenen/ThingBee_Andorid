package com.example.ararmsettings;

import androidx.annotation.NonNull;
import androidx.appcompat.app.AppCompatActivity;

import android.content.SharedPreferences;
import android.os.Bundle;
import android.view.MenuItem;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;

public class AddContract extends AppCompatActivity {
    private TextView textView;
    private Button confirmBtn;
    private Button cancleBtn;
    private String text;

    public static final String SHARED_PREFS = "sharedPrefs";
    public static final String TEXT = "text";
    public static final String CONFIRM = "confirm";

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_add_contract);
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        getSupportActionBar().setTitle("연락처 등록");

        textView = findViewById(R.id.phoneNumber);
        confirmBtn = findViewById(R.id.confirmBtn);
        cancleBtn = findViewById(R.id.cancleBtn);
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
                loadData();
                updateViews();
                super.onBackPressed();
                break;
            case (R.id.cancleBtn):
                super.onBackPressed();
                break;
        }

    }

    public void saveData() {
        SharedPreferences sharedPreferences = getSharedPreferences(SHARED_PREFS, MODE_PRIVATE);
        SharedPreferences.Editor editor = sharedPreferences.edit();

        editor.putString(TEXT, textView.getText().toString());
        editor.apply();
        Toast.makeText(this, "Data Saved", Toast.LENGTH_LONG).show();
    }

    public void loadData() {
        SharedPreferences sharedPreferences = getSharedPreferences(SHARED_PREFS, MODE_PRIVATE);
        SharedPreferences.Editor editor = sharedPreferences.edit();
        editor.putString("TEXT", textView.getText().toString());
        editor.commit();
        text = sharedPreferences.getString(TEXT, "");
    }

    public void updateViews() {
        textView.setText(text);
    }
}
