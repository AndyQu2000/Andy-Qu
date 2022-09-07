package edu.qc.seclass.glm;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

import java.util.ArrayList;
import java.util.List;

public class listCreate extends AppCompatActivity {
    reminderDB dbHelper;
    EditText userListName;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_list_create);
    }

    public void createListCancel(View view){
        Intent intent = new Intent(this, MainActivity.class);
        startActivity(intent);
    }

    public void addListToDB(View view){
        dbHelper = new reminderDB(getApplicationContext());
        userListName = findViewById(R.id.LISTNAME);
        String listName = userListName.getText().toString();
        if(listName.equals("")){
            Toast.makeText(listCreate.this, "No name was entered", Toast.LENGTH_LONG).show();
        }
        else if(dbHelper.addList(listName)){
            Toast.makeText(listCreate.this, "success", Toast.LENGTH_SHORT).show();
            /*List<String> listNames = dbHelper.getAllListNames();
            for(int i = 0; i < listNames.size(); i++){
                Toast.makeText(listCreate.this, listNames.get(i), Toast.LENGTH_LONG).show();
            }*/
        }
        else if(!(dbHelper.addList(listName))){
            Toast.makeText(listCreate.this, "Failure", Toast.LENGTH_SHORT).show();
        }

        closeKeyboard();
        createListCancel(this.getCurrentFocus());
    }

    public void closeKeyboard(){
        View view = this.getCurrentFocus();
        if(view != null){
            InputMethodManager imm = (InputMethodManager)getSystemService(Context.INPUT_METHOD_SERVICE);
            imm.hideSoftInputFromWindow(view.getWindowToken(), 0);
        }
    }
}