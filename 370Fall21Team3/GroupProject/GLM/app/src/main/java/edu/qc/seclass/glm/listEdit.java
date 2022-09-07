package edu.qc.seclass.glm;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.Toast;

public class listEdit extends AppCompatActivity {
    reminderDB dbHelper;
    EditText listNameUpdate;
    String lName;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_list_edit);
    }

    public void editListCancel(View view){
        Intent intent = new Intent(this, MainActivity.class);
        startActivity(intent);
    }

    public void editListAction(View view){
        dbHelper = new reminderDB(getApplicationContext());
        listNameUpdate = (EditText) findViewById(R.id.nameListEdit);
        String newName = listNameUpdate.getText().toString();
        lName = getIntent().getStringExtra("nameList");

        if(dbHelper.updateList(lName, newName)){
            Toast.makeText(this, "success", Toast.LENGTH_LONG).show();
        } else {
            Toast.makeText(this, "List failed to update", Toast.LENGTH_LONG).show();

        }

        closeKeyboard();
        editListCancel(this.getCurrentFocus());
    }

    public void closeKeyboard(){
        View view = this.getCurrentFocus();
        if(view != null){
            InputMethodManager imm = (InputMethodManager)getSystemService(Context.INPUT_METHOD_SERVICE);
            imm.hideSoftInputFromWindow(view.getWindowToken(), 0);
        }
    }
}