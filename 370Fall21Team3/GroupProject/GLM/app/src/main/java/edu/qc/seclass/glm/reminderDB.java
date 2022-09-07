package edu.qc.seclass.glm;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.widget.Toast;

import androidx.annotation.Nullable;

import java.util.ArrayList;
import java.util.List;

public class reminderDB extends SQLiteOpenHelper{
    //increment if failures arise in insertion of data, or when changing the database schema
    //version 1 was when Hammad and Jay and Ivan were learning how to implement SQLite and we encountered problems on insertion and table creation
    //version 2 was when the database first started working
    //version 3 has updated table name (from reminder_table to list_table)
    //version 4 adds the reminder table
    //version 5 adds check-off ability
    //version 6 is a test to see if data still is inserted twice into DB (bug found in version 5)
    private static final int dbversion = 6;

    //name of DataBase
    private static String dbName = "reminderDB";

    //table names
    public static String list_table = "list_table";
    public static String reminder_table = "reminder_table";

    //column names
    public static String listID_COL = "ListID";
    public static String listName_COL = "listName";
    public static String reminderID_COL = "ReminderID";
    public static String reminderName_COL = "ReminderName";
    public static String reminderType_COL = "ReminderType";
    public static String check_COL = "CheckedOff";

    public reminderDB(Context context){
        super(context, dbName, null, dbversion);
    }

    @Override
    public void onCreate(SQLiteDatabase db) {
        db.execSQL("CREATE TABLE list_table (\n" +
                "    ListID INTEGER PRIMARY KEY AUTOINCREMENT \n" +
                "    ,listName TEXT NOT NULL UNIQUE\n" +
                "\n" +
                "    );" );

        db.execSQL("create table reminder_table (\n" +
                "   ReminderID INTEGER primary key autoincrement \n" +
                "   ,ListID INTEGER \n" +
                "   ,ReminderName TEXT NOT NULL \n " +
                "   ,ReminderType TEXT NOT NULL \n " +
                "   ,CheckedOff BOOLEAN NOT NULL CHECK (CheckedOff IN (0, 1)));" );

    }

    @Override
    public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {
        String query = "DROP TABLE IF EXISTS list_table";
        String query1 = "DROP TABLE IF EXISTS reminder_table";    //sql query to check table with the same name or not
        db.execSQL(query);  //executes the sql command
        db.execSQL(query1);
        onCreate(db);
    }

    public boolean addList(String listName) {
        SQLiteDatabase db = this.getWritableDatabase();
        ContentValues contentValues = new ContentValues();
        contentValues.put(listName_COL,listName);
        long result = (db).insert(list_table, null, contentValues);

        //db.close();
        if (result == -1) {
            return false;
        } else {
            return true;
        }

    }

    public int getListID(String listName){
        SQLiteDatabase db = this.getReadableDatabase();
        Cursor cursor = db.rawQuery("select ListID from list_table where listName = ?", new String[]{listName});
        int resultListID = 0;
        if (cursor.moveToFirst()) {
            do {
                resultListID = cursor.getInt(0);
            } while (cursor.moveToNext());
        }
        cursor.close();
        return resultListID;
    }

    public String getListName(int IDofList){
        SQLiteDatabase db = this.getReadableDatabase();

        Cursor cursor = db.rawQuery("select listName from list_table where ListID = ?", new String[]{String.valueOf(IDofList)});
        String resultType = "";
        if (cursor.moveToFirst()) {
            do {
                resultType = cursor.getString(0);
            } while (cursor.moveToNext());
        }
        return resultType;
    }

    public String getReminderType(String remName){
        SQLiteDatabase db = this.getReadableDatabase();
        Cursor cursor = db.rawQuery("select ReminderType from reminder_table where ReminderName = ?", new String[]{remName});
        String resultType = "";
        if (cursor.moveToFirst()) {
            do {
                resultType = cursor.getString(0);
            } while (cursor.moveToNext());
        }
        return resultType;
    }

    public boolean addReminder(String listName, String remName, String remType) {
        SQLiteDatabase db = this.getWritableDatabase();
        int resultListID = 0;
        Cursor cursor = db.rawQuery("select ListID from list_table where listName = ?", new String[]{listName});
        if (cursor.moveToFirst()) {
            do {
                resultListID = cursor.getInt(0);
            } while (cursor.moveToNext());
        }
        cursor.close();
        ContentValues contentValues = new ContentValues();
        contentValues.put(listID_COL,resultListID);
        contentValues.put(reminderName_COL, remName);
        contentValues.put(reminderType_COL, remType);
        contentValues.put(check_COL, 0);
        long result = db.insert(reminder_table, null, contentValues);

        //db.close();
        if (result == -1) {
            return false;
        } else {
            return true;
        }

    }

    public boolean updateList(String old, String newName){
        SQLiteDatabase db = this.getWritableDatabase();
        int resultListID = 0;

        Cursor cursor = db.rawQuery("select ListID from list_table where listName = ?", new String[]{old});
        if (cursor.moveToFirst()) {
            do {
                resultListID = cursor.getInt(0);
            } while (cursor.moveToNext());
        }
        ContentValues cv = new ContentValues();
        cv.put(listName_COL, newName);
        long result = db.update(list_table, cv, "ListID=?", new String[]{String.valueOf(resultListID)});
        if(result == -1){
            return false;
        } else {
            return true;
        }
    }

    public List<String> getAllListNames(){

        List<String> listNames = new ArrayList<>();

        SQLiteDatabase db = this.getReadableDatabase();
        Cursor cursor = db.rawQuery(" select " + listName_COL + "  from " + list_table , null);
        if (cursor.moveToFirst()) {
            do {
                listNames.add(cursor.getString(0));
            } while (cursor.moveToNext());
        }
        cursor.close();
        db.close();
        return listNames;
    }

    public boolean listDeletion(String listName){
        List<String> reminders = getAllRemindersInList(listName);
        boolean isRemDeleted = false;
        boolean isListDeleted;
        SQLiteDatabase db = this.getWritableDatabase();
        //delete all reminders inside the list
        for(int i = 0; i < reminders.size(); i++){
            if(reminderDeletion(reminders.get(i))){
                isRemDeleted = true;
            } else{
                return isRemDeleted;
            }
        }

        long result = db.delete(list_table, "listName=?", new String[]{listName});
        if(result == -1){
            isListDeleted = false;
        } else {
            isListDeleted = true;
        }

        return (isListDeleted && isRemDeleted);
    }
    public String searchForaReminder(String remName){
        SQLiteDatabase db = this.getReadableDatabase();
        Cursor cursor = db.rawQuery("select ReminderName,ListID from reminder_table where ReminderName = ?", new String[]{remName});
        String resultName = "";
        int resultID = 0;
        if (cursor.moveToFirst()) {
            do {
                resultName = cursor.getString(0);
                resultID = cursor.getInt(1);
            } while (cursor.moveToNext());
        }
        return resultName + "_" + resultID;
    }

    public List<String> getAllRemindersInList(String listName){
        List<String> reminderNames = new ArrayList<>();
        int IDforList = getListID(listName);
        SQLiteDatabase db = this.getReadableDatabase();
        Cursor cursor = db.rawQuery("select ReminderName from reminder_table where reminder_table.ListID = " + IDforList, null);
        if(cursor.moveToFirst()){
            do {
                reminderNames.add(cursor.getString(0));
            } while (cursor.moveToNext());
        }
        cursor.close();
        db.close();
        return reminderNames;
    }
    public boolean reminderDeletion(String reminderName){
        SQLiteDatabase db = this.getWritableDatabase();
        return db.delete(reminder_table, "ReminderName=?", new String[]{reminderName}) > 0;
    }

    public boolean checkOn(String remName){
        SQLiteDatabase db = this.getWritableDatabase();
        boolean checkStatus = true;
        ContentValues cv = new ContentValues();
        cv.put(check_COL, 1);
        long result = db.update(reminder_table, cv, "ReminderName=?", new String[]{remName});

        if(result == -1){
            checkStatus = false;
        } else {
            checkStatus = true;
        }
        return checkStatus;
    }
    public boolean checkOff(String remName){
        SQLiteDatabase db = this.getWritableDatabase();
        boolean checkStatus = false;
        ContentValues cv = new ContentValues();
        cv.put(check_COL, 0);
        long result = db.update(reminder_table, cv, "ReminderName=?", new String[]{remName});

        if(result == -1){
            checkStatus = false;
        } else {
            checkStatus = true;
        }
        return checkStatus;
    }
    public int getCheckStatus(String remName){
        SQLiteDatabase db = this.getReadableDatabase();
        int checkStatus = 0;
        Cursor cursor = db.rawQuery("select CheckedOff from reminder_table where ReminderName = ?", new String[]{remName});
        if (cursor.moveToFirst()) {
            do {
                checkStatus = cursor.getInt(0);
            } while (cursor.moveToNext());
        }
        cursor.close();
        return checkStatus;
    }
}
