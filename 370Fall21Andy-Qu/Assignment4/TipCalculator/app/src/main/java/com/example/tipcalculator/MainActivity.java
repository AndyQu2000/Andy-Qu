package com.example.tipcalculator;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;

public class MainActivity extends AppCompatActivity {

    double checkAmount = 120;
    int partyCount=4;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

    }
    public void calcE(){
        TextView fifteenP = findViewById(R.id.fifteenPercentTipValue);
        fifteenP.setText(String.valueOf((int) (((checkAmount*0.15)/partyCount)+0.501)));
        TextView twentyP = findViewById(R.id.twentyPercentTipValue);
        twentyP.setText(String.valueOf((int) (((checkAmount*0.2)/partyCount)+0.501)));
        TextView twentyfiveP = findViewById(R.id.twentyfivePercentTipValue);
        twentyfiveP.setText(String.valueOf((int) (((checkAmount*0.25)/partyCount)+0.501)));
        TextView fifteenT = findViewById(R.id.fifteenPercentTotalValue);
        fifteenT.setText(String.valueOf((int) ((((checkAmount*0.15)/partyCount)+0.501)+checkAmount/partyCount)));
        TextView twentyT = findViewById(R.id.twentyPercentTotalValue);
        twentyT.setText(String.valueOf((int) ((((checkAmount*0.2)/partyCount)+0.501)+checkAmount/partyCount)));
        TextView twentyfiveT = findViewById(R.id.twentyfivePercentTotalValue);
        twentyfiveT.setText(String.valueOf((int) ((((checkAmount*0.25)/partyCount)+0.501)+checkAmount/partyCount)));

    }
    public void onClick(View view){
        EditText CheckAmt = findViewById(R.id.checkAmountValue);
        checkAmount = Double.parseDouble(CheckAmt.getText().toString());
        EditText partysize = findViewById(R.id.partySizeValue);
        partyCount = Integer.parseInt((partysize.getText().toString()));
        if(checkAmount>0&&partyCount>0) calcE();
        else{
            TextView Error = findViewById(R.id.error);
            Error.setText("ERROR CHECK AMOUNT & PARTY SIZE MUST BE GREATER THAN 0");
        }
    }
}