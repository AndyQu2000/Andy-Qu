package edu.qc.seclass.glm;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.CheckBox;
import android.widget.Spinner;
import android.widget.TextView;
import android.widget.Toast;

import java.util.List;

public class reminderShow extends AppCompatActivity {
    reminderDB dbHelper;
    Spinner reminderSpinner;
    public List<String> allReminders;
    public String reminderSelection;
    public String lName;
    TextView typeView;
    TextView nameView;
    CheckBox checkedOff;
    Boolean checkStatus;



    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_reminder_show);

        checkedOff = (CheckBox) findViewById(R.id.checkBox);

        reminderSpinner = findViewById(R.id.remSpinner);
        dbHelper = new reminderDB(this);
        //allReminders = dbHelper.getAllRemindersInList(lName);


        Bundle remSelection = getIntent().getExtras();
        lName = remSelection.getString("nameOfList");

        allReminders = dbHelper.getAllRemindersInList(lName);

        //Toast.makeText(reminderShow.this, lName, Toast.LENGTH_LONG).show();



        ArrayAdapter<String> adapter = new ArrayAdapter<>(this, android.R.layout.simple_spinner_item, allReminders);
        adapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
        reminderSpinner.setAdapter(adapter);

        reminderSpinner.setPrompt("Select Reminder");

        typeView = findViewById(R.id.textView6);
        nameView = findViewById(R.id.textView7);

        reminderSpinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() {
            @Override
            public void onItemSelected(AdapterView<?> parent, View view, int position, long id) {
                reminderSelection = parent.getItemAtPosition(position).toString();
                //Toast.makeText(reminderShow.this, reminderSelection, Toast.LENGTH_LONG).show();
                typeView.setText(dbHelper.getReminderType(reminderSelection));
                nameView.setText(lName);
                if(dbHelper.getCheckStatus(reminderSelection) == 1){
                    checkStatus = true;
                } else if(dbHelper.getCheckStatus(reminderSelection) == 0){
                    checkStatus = false;
                }
                checkedOff.setChecked(checkStatus);

            }

            @Override
            public void onNothingSelected(AdapterView<?> parent) {

            }

        });

    }

    public void createReminderPage(View view){
        Intent intent = new Intent(this, reminderCreate.class);
        intent.putExtra("nameList", lName);
        startActivity(intent);
        updateReminders();
    }


    public void showReminderCancel(View view){
        Intent intent = new Intent(this, MainActivity.class);
        startActivity(intent);
    }

    public void updateReminders(){
        allReminders = dbHelper.getAllListNames();

        ArrayAdapter<String> adapter = new ArrayAdapter<>(this, android.R.layout.simple_spinner_item, allReminders);
        adapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
        reminderSpinner.setAdapter(adapter);

        reminderSpinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() {
            @Override
            public void onItemSelected(AdapterView<?> parent, View view, int position, long id) {
                reminderSelection = parent.getItemAtPosition(position).toString();
                //Toast.makeText(reminderShow.this, reminderSelection, Toast.LENGTH_LONG).show();
                typeView.setText(dbHelper.getReminderType(reminderSelection));
                nameView.setText(reminderSelection);
            }

            @Override
            public void onNothingSelected(AdapterView<?> parent) {

            }

        });
    }
    public void checkClicked(View view){
        boolean isChecked = checkedOff.isChecked();
        if(isChecked){
            //checkOn method will be called here
            if(dbHelper.checkOn(reminderSelection)){
                Toast.makeText(reminderShow.this, reminderSelection + " successfully checked off", Toast.LENGTH_LONG).show();
            }
        }
        else{
            //checkOff method will be called here
            if(dbHelper.checkOff(reminderSelection)){
                Toast.makeText(reminderShow.this, reminderSelection + " successfully checked on", Toast.LENGTH_LONG).show();

            }
        }
    }

    public void deleteReminder(View v){
        if(dbHelper.reminderDeletion(reminderSelection)){
            Toast.makeText(reminderShow.this, reminderSelection + " successfully deleted", Toast.LENGTH_LONG).show();
            updateReminders();
        }
        else if(!(dbHelper.reminderDeletion(reminderSelection))){
            Toast.makeText(reminderShow.this, "Something went wrong", Toast.LENGTH_LONG).show();
        }
    }
}