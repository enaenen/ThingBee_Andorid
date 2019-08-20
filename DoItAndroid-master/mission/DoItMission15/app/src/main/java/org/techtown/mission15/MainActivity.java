package org.techtown.mission15;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        Button button = findViewById(R.id.button);
        button.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                goToCustomerInputActivity();
            }
        });

    }

    public void goToCustomerInputActivity() {
        Intent intent = new Intent(getApplicationContext(), CustomerInputActivity.class);
        startActivity(intent);
        overridePendingTransition(R.anim.entry, R.anim.exit);
    }

}
