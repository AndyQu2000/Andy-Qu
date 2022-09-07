package edu.qc.seclass.glm;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;

public class reminderSearch extends AppCompatActivity {
    reminderDB dbHelper;
    EditText searchRem;
    TextView typeView;
    TextView listView;
    String lName;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_reminder_search);

        lName = getIntent().getStringExtra("nameList");
    }

    public void searchingForReminder(View v){
        dbHelper = new reminderDB(this);
        searchRem = findViewById(R.id.searchNameRem);

        typeView = findViewById(R.id.textView4);
        listView = findViewById(R.id.textView5);

        String remToSearch = searchRem.getText().toString();
        String searchedRem = dbHelper.searchForaReminder(remToSearch);
        String remName = searchedRem.substring(0, searchedRem.indexOf("_"));
        String listid = searchedRem.substring(searchedRem.indexOf("_")+1);
        if(remToSearch.equals(remName)){
            typeView.setText(dbHelper.getReminderType(remName));
            listView.setText(dbHelper.getListName(Integer.parseInt(listid)));
        } else if(searchedRem.equals("_0")){
            Toast.makeText(reminderSearch.this, "Reminder does not exist", Toast.LENGTH_LONG).show();
        }

        closeKeyboard();
    }

    public void searchReminderBack(View view){
        Intent intent = new Intent(this, MainActivity.class);
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