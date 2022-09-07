package edu.qc.seclass.glm;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.Spinner;
import android.widget.Toast;

import java.util.List;

public class MainActivity extends AppCompatActivity {
    reminderDB dbHelper;
    Spinner listSpinner;
    List<String> allLists;
    public String listSelection;



    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        listSpinner = (Spinner) findViewById(R.id.spinner2);
        dbHelper = new reminderDB(this);
        allLists = dbHelper.getAllListNames();

        /*for(int i = 0; i < allLists.size(); i++){
            Toast.makeText(MainActivity.this, allLists.get(i), Toast.LENGTH_LONG).show();
        }*/



        ArrayAdapter<String> adapter = new ArrayAdapter<>(this, android.R.layout.simple_spinner_item, allLists);
        adapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
        listSpinner.setAdapter(adapter);

        listSpinner.setPrompt("Select List");

        listSpinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() {
            @Override
            public void onItemSelected(AdapterView<?> parent, View view, int position, long id) {
                listSelection = parent.getItemAtPosition(position).toString();
                //Toast.makeText(MainActivity.this, listSelection, Toast.LENGTH_LONG).show();
            }

            @Override
            public void onNothingSelected(AdapterView<?> parent) {

            }
        });


    }

    /*public String getListSelection(){ return listSelection; } */

    public void createListPage(View view){
        Intent intent = new Intent(this, listCreate.class);
        startActivity(intent);
        updateLists();
    }

    public void deleteListAction(View view){
        if(dbHelper.listDeletion(listSelection)){
            Toast.makeText(MainActivity.this, listSelection + " successfully deleted", Toast.LENGTH_LONG).show();
            updateLists();
        } else{
            Toast.makeText(MainActivity.this, "List deletion failed", Toast.LENGTH_LONG).show();
        }
    }

    public void editListPage(View view){
        Intent intent = new Intent(this, listEdit.class);
        intent.putExtra("nameList", listSelection);
        startActivity(intent);
        updateLists();
    }

    public void showRemindersPage(View view){
        Intent intent = new Intent(this, reminderShow.class);
        intent.putExtra("nameOfList", listSelection);
        startActivity(intent);
    }

    public void searchRemindersPage(View view){
        Intent intent = new Intent(this, reminderSearch.class);
        intent.putExtra("nameList", listSelection);
        startActivity(intent);
    }

    public void updateLists(){
        allLists = dbHelper.getAllListNames();

        ArrayAdapter<String> adapter = new ArrayAdapter<>(this, android.R.layout.simple_spinner_item, allLists);
        adapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
        listSpinner.setAdapter(adapter);

    }
}