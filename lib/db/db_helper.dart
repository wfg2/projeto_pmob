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

    sql =
        "INSERT INTO RECEITAFAV (foto_Receita, nome_Receita) VALUES ('https://www.kikkoman.pt/fileadmin/_processed_/d/1/csm_1498-recipe-page-Nasi_Goreng_Desktop-Header_c44e907269.webp', 'Nasi Goreng');";
    await db.execute(sql);

    sql =
        "INSERT INTO RECEITAFAV (foto_Receita, nome_Receita) VALUES ('https://www.thespruceeats.com/thmb/TV91zQEIkPA2yCHv8b4c13t_NOo=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/nanaimo-bar-gt-18-56a8be0e3df78cf772a03c79.jpg', 'Nanaimo Bar' );";
    await db.execute(sql);

    sql =
        "INSERT INTO RECEITAFAV (foto_Receita, nome_Receita) VALUES ('https://receitatodahora.com.br/wp-content/uploads/2021/09/yakisoba-scaled.jpg', 'Yakisoba');";
    await db.execute(sql);

    sql =
        "INSERT INTO RECEITAFAV (foto_Receita, nome_Receita) VALUES ('https://www.guiadasemana.com.br/contentFiles/image/opt_w1280h960/2019/08/FEA/64193_shutterstock-1021082725.jpg', 'Pastel de Nata');";
    await db.execute(sql);

    sql =
        "INSERT INTO RECEITAFAV (foto_Receita, nome_Receita) VALUES ('https://amoftaste.com/media/2025/08/pelmeni.jpg', 'Pelmeni');";
    await db.execute(sql);

    sql =
        "INSERT INTO RECEITAFAV (foto_Receita, nome_Receita) VALUES ('https://www.ajinomotofoodservice.com.br/wp/content/uploads/receitas/tacaca-com-tucupi-1920x1080-23-01-2025-2oz41.webp', 'Tacacá');";
    await db.execute(sql);

    sql =
        "INSERT INTO RECEITAFAV (foto_Receita, nome_Receita) VALUES ('https://receitas.wap.ind.br/wp-content/uploads/2025/06/tacos.jpg', 'Tacos');";
    await db.execute(sql);

    sql =
        "INSERT INTO RECEITAFAV (foto_Receita, nome_Receita) VALUES ('https://receitatodahora.com.br/wp-content/uploads/2024/11/fricasse-frango-1311-1200x900.jpg', 'Fricassê');";
    await db.execute(sql);

    sql =
        "INSERT INTO RECEITAFAV (foto_Receita, nome_Receita) VALUES ('https://i.panelinha.com.br/i1/bk-3926-blog-pamonha-1.webp', 'Pamonha');";
    await db.execute(sql);

  }
}