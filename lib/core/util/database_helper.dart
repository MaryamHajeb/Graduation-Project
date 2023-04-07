import 'dart:async';
import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/services.dart';
import 'package:hikayati_app/features/Story/date/model/MeadiaModel.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';

import '../../features/Regestrion/date/model/userMode.dart';


class DatabaseHelper{
  static Database? _db;

String TableName='meadia';
  
  Future<Database?> get db async{
    if(_db != null){
      return _db;
    }
    _db = await intDB();
    return _db;
  }


  intDB() async{
    var dbDir = await getDatabasesPath();
    var dbPath = join(dbDir, "app.db");

// Delete any existing database:
    await deleteDatabase(dbPath);

// Create the writable database file from the bundled demo database file:
    ByteData data = await rootBundle.load("assest/DB/hakity.db");
    List<int> bytes = data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
    await File(dbPath).writeAsBytes(bytes);
    print('create databases secsses');
    var db = await openDatabase(dbPath);
    print('open databases secsses');
    print(db.isOpen);
  }

  //
  // void _onCreate(Database db , int newVersion) async{
  //   var sql = "CREATE TABLE user (id INTEGER PRIMARY KEY,"
  //       " name TEXT, password TEXT,  city TEXT, age INTEGER )";
  //    await db.execute(sql);
  // }



Future<int> inserStory( MeadiaModel meadiaModel) async{
    var dbClient = await  db;
    int result = await dbClient!.insert("meadia", meadiaModel.toJson());
    return result;
}



Future<List> getAllstory() async{
  Database? dbClient = await  db;
  var sql = "SELECT * FROM MEADIA";
  List result = await dbClient!.rawQuery(sql);
  return result.toList();
}



// Future<int> saveUserModel( UserModel UserModel) async{
//     var dbClient = await  db;
//     int result = await dbClient!.insert("$UserModelTable", UserModel.toJson());
//     return result;
// }


  // Future<List> getAllUserModels() async{
  //   var dbClient = await  db;
  //   var sql = "SELECT * FROM $UserModelTable";
  //   List result = await dbClient!.rawQuery(sql);
  //   return result.toList();
  // }
  //
  // Future<int?> getCount() async{
  //   var dbClient = await  db;
  //   var sql = "SELECT COUNT(*) FROM $UserModelTable";
  //
  //   return  Sqflite.firstIntValue(await dbClient!.rawQuery(sql)) ;
  // }

  // Future<List<Map<String, Object?>>> getUserModel(int id) async{
  //   var dbClient = await  db;
  //   var sql = "SELECT * FROM $UserModelTable WHERE $columnId = $id";
  //   var result = await dbClient!.rawQuery(sql);
  //  return result;
  // }


  // Future<int> deleteUserModel(int id) async{
  //   var dbClient = await  db;
  //   return  await dbClient!.delete(
  //       UserModelTable , where: "$columnId = ?" , whereArgs: [id]
  //   );
  // }
  //
  // Future<int> updateUserModel(UserModel UserModel) async{
  //   var dbClient = await  db;
  //   return  await dbClient!.update(
  //  UserModelTable ,UserModel.toJson(), where: "$columnId = ?" , whereArgs: [UserModel.id]
  //   );
  // }
  //
  //
  // Future<void> close() async{
  //   var dbClient = await  db;
  //   return  await dbClient!.close();
  // }
  //

}