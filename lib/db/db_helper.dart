import 'dart:async';

import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DBHelper {
  Future<Database> initDB() async{
    String path = await getDatabasesPath();
    String dbNome = 'dende.db';

    String dbPath = join(path, dbNome);

    Database db = await openDatabase(dbPath, version: 1, onCreate: onCreateDB);

    return db;
  }

  Future<void> onCreate(Database db, int version) async{
    String sql = ''' CREATE TABLE POSTRECEITA (
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      fotodeperfil TEXT,
      nomeusuario TEXT,
      dataehora TEXT,
      fotopost TEXT,
      legenda TEXT,
      likes TEXT,
      comentarios TEXT,
      compartilhamentos TEXT,
      nomereceita TEXT,
      temporeceita TEXT,
      nivelreceita TEXT,
      fotoreceita TEXT,
      ingredientes
      preparo
    );''';

    // await db.execute(sql);
    sql = "";
    // await db.execute(sql);
    // await db.execute(sql);
    // await db.execute(sql);
    // await db.execute(sql);

  }
}