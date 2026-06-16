import 'dart:async';

import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DbHelper {
  Future<Database> initDB() async {
    String path = await getDatabasesPath();
    String dbName = 'receitas.db';

    String dbPath = join(path, dbName);

    Database db = await openDatabase(dbPath, version: 1, onCreate: onCreateDB);
    return db;
  }
}

  Future<void> onCreateDB(Database db, int version) async {
    String sql = '''CREATE TABLE RECEITAS (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT,
    imagem TEXT,
    tempo TEXT,
    categoria TEXT
  ); ''';

    await db.execute(sql);

    sql =
        "INSERT INTO Receitas (nome, imagem, tempo, categoria) VALUES ('Acarajé', 'https://www.receiteria.com.br/wp-content/uploads/acaraje-capa.png', '40 min', 'Nordestina');";
    await db.execute(sql);

    sql =
    "INSERT INTO Receitas (nome, imagem, tempo, categoria) VALUES ('Acarajé', 'https://www.receiteria.com.br/wp-content/uploads/acaraje-capa.png', '40 min', 'Nordestina');";
    await db.execute(sql);

    sql =
    "INSERT INTO Receitas (nome, imagem, tempo, categoria) VALUES ('Acarajé', 'https://www.receiteria.com.br/wp-content/uploads/acaraje-capa.png', '40 min', 'Nordestina');";
    await db.execute(sql);

    sql =
    "INSERT INTO Receitas (nome, imagem, tempo, categoria) VALUES ('Acarajé', 'https://www.receiteria.com.br/wp-content/uploads/acaraje-capa.png', '40 min', 'Nordestina');";
    await db.execute(sql);
  }