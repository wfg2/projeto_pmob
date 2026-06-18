import 'dart:async';

import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DbHelper {
  Future<Database> initDB() async{
    String path = await getDatabasesPath();
    String dbName = 'dendeJ.db';

    String dbPath = join(path, dbName);

    Database db = await openDatabase(dbPath, version: 1, onCreate: onCreateDB);
    return db;
  }

  Future<void> onCreateDB(Database db, int version) async {
    String sql = '''CREATE TABLE RECEITAFAV(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
      foto_Receita TEXT,
      nome_Receita TEXT
    ); ''';

    await db.execute(sql);

    sql =
        "INSERT INTO RECEITAFAV (foto_Receita, nome_Receita) VALUES ('https://c.ndtvimg.com/2023-03/0m65kep_samosa_625x300_10_March_23.jpg', 'Samosa' );";
    await db.execute(sql);

  }
}