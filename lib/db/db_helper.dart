import 'dart:async';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DbHelper {
  /*se usa o await, é obrigatório o uso do async, para avisar que pode
  demorar para executar, e o Future<TipoDeRetorno>*/
  Future<Database> initDB() async {
    String path = await getDatabasesPath();
    String dbName = 'receitas.db';

    //Path/caminho do banco de dados + nome do banco
    String dbPath = join(path, dbName);

    //Cria e/ou abre o banco de dados
    Database db = await openDatabase(dbPath, version: 1, onCreate: onCreateDB);

    return db;
  }

  Future<void> onCreateDB(Database db, int version) async {
    String sql = '''
        CREATE TABLE RECEITAS (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            nome TEXT,
            imagem TEXT,
            tempo TEXT,
            categoria TEXT
            );
    ''';

    await db.execute(sql);

    sql =
    "INSERT INTO Receitas (nome, imagem, tempo, categoria) VALUES ('Acarajé', 'https://www.receiteria.com.br/wp-content/uploads/acaraje-capa.png', '40 min', 'Nordestina');";
    await db.execute(sql);

    sql =
    "INSERT INTO Receitas (nome, imagem, tempo, categoria) VALUES ('Tapioca', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQVvNmfeftNURRHCIdF7-l0fc1nRIYxAFh2nw&s', '10 min', 'Nordestina');";
    await db.execute(sql);

    sql =
    "INSERT INTO Receitas (nome, imagem, tempo, categoria) VALUES ('Cuscuz', 'https://listadereceitas.com/wp-content/uploads/2025/04/Receita-de-cuscuz-nordestino-simples-de-fazer-500x500.jpg', '20 min', 'Nordestina');";
    await db.execute(sql);

    sql =
    "INSERT INTO Receitas (nome, imagem, tempo, categoria) VALUES ('Feijoada', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRjRYmBoJQ3N90R6HuoSxGXrXMtvNBFZe-shA&s', '1h', 'Nordestina');";
    await db.execute(sql);

    sql =
    "INSERT INTO Receitas (nome, imagem, tempo, categoria) VALUES ('Cocada', 'https://static.itdg.com.br/images/640-400/053d6463e51b271876948230e193ec4b/cocada-cremosa.jpg', '40 min', 'Nordestina');";
    await db.execute(sql);
  }
}