package edu.qc.seclass.glm;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.Toast;

import java.util.List;

public class reminderCreate extends AppCompatActivity {
    reminderDB dbHelper;
    EditText remName;
    EditText remType;
    String lName;



    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_reminder_create);
        Bundle listSelected = getIntent().getExtras();
        lName = listSelected.getString("nameList");


    }

    public void addReminderToDB(View v){
        //Toast.makeText(reminderCreate.this, lName, Toast.LENGTH_LONG).show();

        dbHelper = new reminderDB(getApplicationContext());
        remName = findViewById(R.id.NameRem);
        remType = findViewById(R.id.TypeRem);

        String reminderName = remName.getText().toString();
        String reminderType = remType.getText().toString();

        if(reminderName.equals("") || reminderType.equals("")){
            Toast.makeText(reminderCreate.this, "One or more fields are empty", Toast.LENGTH_LONG).show();
        } if(dbHelper.addReminder(lName, reminderName, reminderType)){
            Toast.makeText(reminderCreate.this, "Reminder added successfully", Toast.LENGTH_LONG).show();
            /*List<String> remNames = dbHelper.getAllRemindersInList(lName);
            for(int i = 0; i < remNames.size(); i++){
                Toast.makeText(reminderCreate.this, remNames.get(i), Toast.LENGTH_LONG).show();
            }*/
        } else if(!(dbHelper.addReminder(lName, reminderName, reminderType))){
            Toast.makeText(reminderCreate.this, "Failure", Toast.LENGTH_LONG).show();
        }

        closeKeyboard();
        createReminderCancel(getCurrentFocus());
    }

    public void createReminderCancel(View view){
        Intent intent = new Intent(this, reminderShow.class);
        startActivity(intent);
    }

    public void closeKeyboard(){
        View view = this.getCurrentFocus();
        if(view != null){
            InputMethodManager imm = (InputMethodManager)getSystemService(Context.INPUT_METHOD_SERVICE);
            imm.hideSoftInputFromWindow(view.getWindowToken(), 0);
        }
    }



}