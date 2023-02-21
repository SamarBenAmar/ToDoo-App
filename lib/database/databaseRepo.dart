import 'package:sqflite/sqflite.dart';
import 'package:todoo/database/database.dart';

class DatabaseRepo{
  DatabaseConnection? _databaseConnection;

  DatabaseRepo(){
    //initialize database connection
    _databaseConnection = DatabaseConnection();
  }
   static Database? _database;

  //check if database exists or not
  Future<Database?> get database async{
    if(_database != null) return _database;
    _database = await _databaseConnection?.setDatabase();
    return _database;
  }

  //inserting data to table
  insertData(table, data) async {
    var connection = await database;
    return await connection?.insert(table, data);
  }
}