import 'dart:async';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DbHelper {
  Future<Database> initDB() async {
    String path = await getDatabasesPath();
    String dbName = 'categoria.db';

    String dbPath = join(path, dbName);

    Database db = await openDatabase(dbPath, version: 1, onCreate: onCreateDB);

    return db;
  }

  Future<void> onCreateDB(Database db, int version) async {

    await db.execute('''CREATE TABLE CATEGORIA (
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      urlImagem TEXT NOT NULL,
      categoria TEXT NOT NULL
    ); ''');

    await db.execute('''CREATE TABLE RECEITAS_CATEGORIA (
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      urlImagem TEXT NOT NULL,
      timer TEXT NOT NULL,
      user TEXT NOT NULL,
      receita TEXT NOT NULL,
      categoria_id INTEGER NOT NULL,
      FOREIGN KEY (categoria_id) REFERENCES CATEGORIA(id)
      );''');

    String sql;

    sql =
      "INSERT INTO Categoria (urlImagem, categoria) VALUES ('https://conteudo.imguol.com.br/c/entretenimento/ad/2020/08/04/molhos-e-massas-diferentes-podem-dar-mais-variedade-ao-seu-cardapio-1596561195532_v2_4x3.jpg', 'Massas');";
    await db.execute(sql);

    sql =
        "INSERT INTO Categoria (urlImagem, categoria) VALUES ('https://supermercadosrondon.com.br/guiadecarnes/images/postagens/as_7_melhores_carnes_para_churrasco_21-05-2019.jpg', 'Carnes');";
    await db.execute(sql);

    sql =
        "INSERT INTO Categoria (urlImagem, categoria) VALUES ('https://guiadacozinha.com.br/wp-content/uploads/2020/01/shutterstock_661447876.jpg', 'Aves');";
    await db.execute(sql);

    sql =
        "INSERT INTO Categoria (urlImagem, categoria) VALUES ('https://espetinhodesucesso.com/wp-content/uploads/2022/03/Como-fazer-peixe-frito-inteiro.jpg', 'Peixes');";
    await db.execute(sql);

    sql =
        "INSERT INTO Categoria (urlImagem, categoria) VALUES ('https://images.elle.com.br/2022/12/avec_salada-grega.jpg', 'Saladas');";
    await db.execute(sql);

    sql =
        "INSERT INTO Categoria (urlImagem, categoria) VALUES ('https://s2-receitas.glbimg.com/n7d-Ule7CHsHSBvQyF9KhMEmkU8=/0x0:1280x800/984x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_1f540e0b94d8437dbbc39d567a1dee68/internal_photos/bs/2022/J/H/uBe51BRMiAgskpDJXKcg/pave-de-chocolate.jpg', 'Sobremesas');";
    await db.execute(sql);

    sql =
        "INSERT INTO Categoria (urlImagem, categoria) VALUES ('https://www.estadao.com.br/resizer/v2/QQESWMTIVFBLHOEENMQ5ZSYS5E.jpg?quality=80&auth=f3637ccd94435f99ac1aa126367c0ba9167e49b28340c8c4d2d209dbf9dce3ba&width=720&height=410&smart=true', 'Tortas');";
    await db.execute(sql);

    // TABELA RECEITAS: --------------------------------------------------------------------------
    // Massas
    sql =
        "INSERT INTO Receitas_Categoria (urlImagem, receita, user, categoria_id, timer) VALUES ('https://upload.wikimedia.org/wikipedia/commons/8/86/Ravioli_di_Faraona.JPG', 'Ravioli de Faraona', 'Isabela Ferreira', 1, '1h 20 min');";
    await db.execute(sql);

    sql =
        "INSERT INTO Receitas_Categoria (urlImagem, receita, user, categoria_id, timer) VALUES ('https://guiadacozinha.com.br/wp-content/uploads/2014/01/lasanha-bolonhesa-na-pressao.jpg', 'Lasanha Bolonhesa', 'Rayanne Vitória', 1, '1h 30 min');";
    await db.execute(sql);

    sql =
        "INSERT INTO Receitas_Categoria (urlImagem, receita, user, categoria_id, timer) VALUES ('https://guiadacozinha.com.br/wp-content/uploads/2019/10/canelone-tradicional.jpg', 'Canelone Tradicional', 'Daiane dos Santos', 1, '40 min');";
    await db.execute(sql);

    sql =
        "INSERT INTO Receitas_Categoria (urlImagem, receita, user, categoria_id, timer) VALUES ('https://www.giallozafferano.com.br/images/5-530/Tortellini_650x433_wm.jpg', 'Tortellini', 'Brenda Alves', 1, '40 min');";
    await db.execute(sql);

    sql =
        "INSERT INTO Receitas_Categoria (urlImagem, receita, user, categoria_id, timer) VALUES ('https://myfoodbook.com.au/sites/default/files/styles/card_c_xw_wp/public/recipe_photo/Spaghetti_Bolognese%20Sauce_0.jpeg', 'Spaghetti Bolognese', 'Isabella Ribeiro', 1, '25 min');";
    await db.execute(sql);

    // Carnes
    sql =
        "INSERT INTO Receitas_Categoria (urlImagem, receita, user, categoria_id, timer) VALUES ('https://guiadacozinha.com.br/wp-content/uploads/2019/10/picanha-grelhada-na-churrasqueira-receita.jpg', 'Picanha Grelhada', 'Marcus Fellype', 2, '15 min');";
    await db.execute(sql);

    sql =
        "INSERT INTO Receitas_Categoria (urlImagem, receita, user, categoria_id, timer) VALUES ('https://s2-receitas.glbimg.com/Sekdv7EdPfw90fD-CiGEhXfhTjw=/0x0:1280x800/984x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_1f540e0b94d8437dbbc39d567a1dee68/internal_photos/bs/2022/C/k/FH6JwZRxe5q3bUrZASYA/carne-de-panela-com-batatas.jpg', 'Carne de Panela', 'Jeferson Gama', 2, '35 min');";
    await db.execute(sql);

    sql =
        "INSERT INTO Receitas_Categoria (urlImagem, receita, user, categoria_id, timer) VALUES ('https://i.ytimg.com/vi/MjUQFcWAZsw/maxresdefault.jpg', 'Costela na Pressão', 'Wadeilton Gomes', 2, '40 min');";
    await db.execute(sql);

    sql =
        "INSERT INTO Receitas_Categoria (urlImagem, receita, user, categoria_id, timer) VALUES ('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSywGzlIJVzEnvzDdLesDh9eeWs9FU9Ok5ABTW_nvC8s6WRTxgqfeXy_aSV&s=10', 'Bife à Parmegiana', 'João Vitor', 2, '45 min');";
    await db.execute(sql);

    sql =
        "INSERT INTO Receitas_Categoria (urlImagem, receita, user, categoria_id, timer) VALUES ('https://www.tribunapr.com.br/wp-content/uploads/2025/07/11130933/carneassadacomlegumes-970x550.jpg', 'Carne Assada', 'Rodrigo dos Santos', 2, '35 min');";
    await db.execute(sql);

    //-- AVES (categoria_id = 3)
    sql =
      "INSERT INTO Receitas_Categoria (urlImagem, receita, user, categoria_id, timer) VALUES ('https://img.band.com.br/image/2025/06/18/frango-assado-com-legumes-e-ervas-185617.jpg', 'Frango Assado', 'Gustavo Rafael', 3, '30 min');";
    await db.execute(sql);

    sql =
      "INSERT INTO Receitas_Categoria (urlImagem, receita, user, categoria_id, timer) VALUES ('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTlRikwJevIhQ8nTOFNkbWv7KZwF2jAiccVQSr9CoeJkogWcGbphwIsTzQ1&s=10', 'Frango Xadrez', 'Raissa Almeida', 3, '25 min');";
    await db.execute(sql);

    sql =
      "INSERT INTO Receitas_Categoria (urlImagem, receita, user, categoria_id, timer) VALUES ('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRhM9mbflOGSLZo1qczXrdfgTUxIo4mptZP2__D68MFL-JOIvShHjZriaT0&s=10', 'Coxinha de Frango', 'Lucas Adiel', 3, '30 min');";
    await db.execute(sql);

    sql =
      "INSERT INTO Receitas_Categoria (urlImagem, receita, user, categoria_id, timer) VALUES ('https://www.confeiteiradesucesso.com/wp-content/uploads/2023/03/filepeitofrangogrelhado.jpg', 'Frango Grelhado', 'José Adryellison', 3, '1h 30 min');";
    await db.execute(sql);

    sql =
      "INSERT INTO Receitas_Categoria (urlImagem, receita, user, categoria_id, timer) VALUES ('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSoeFsA0rmlySlOQq3Jmweq28Ak1Dt_sc8ZKUzFp-67-LQ9ZiBScUJIYHY&s=10', 'Frango a milanesa', 'Marcos Antônio', 3, '45 min');";
    await db.execute(sql);

    //-- PEIXES (categoria_id = 4)
    sql =
      "INSERT INTO Receitas_Categoria (urlImagem, receita, user, categoria_id, timer) VALUES ('https://areademulher.r7.com/wp-content/uploads/2023/02/2-19.jpg', 'Peixe Assado', 'Mateus Cavalcante', 4, '35 min');";
    await db.execute(sql);

    sql =
      "INSERT INTO Receitas_Categoria (urlImagem, receita, user, categoria_id, timer) VALUES ('https://receitinhasdadani.com.br/wp-content/uploads/2024/11/Salmao-grelhado-com-toque-de-mel--1140x720.jpeg', 'Salmão Grelhado', 'Maycon Daniel', 4, '45 min');";
    await db.execute(sql);

    sql =
      "INSERT INTO Receitas_Categoria (urlImagem, receita, user, categoria_id, timer) VALUES ('https://www.mariareceita.com.br/wp-content/uploads/2026/01/Moqueca-de-Peixe-Facil.jpg', 'Moqueca de Peixe', 'Gabriel de Andrade', 4, '50 min');";
    await db.execute(sql);

    sql =
      "INSERT INTO Receitas_Categoria (urlImagem, receita, user, categoria_id, timer) VALUES ('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTsmT-e1XH8Dk91Q7ognPW8yzNSE6K278daRpX4DVAf0q5e0V1AdOOc86dB&s=10', 'Bacalhau ao Forno', 'Ycaro dos Reis', 4, '45 min');";
    await db.execute(sql);

    sql =
      "INSERT INTO Receitas_Categoria (urlImagem, receita, user, categoria_id, timer) VALUES ('https://minhasreceitinhas.com.br/wp-content/uploads/2017/09/camar%C3%A3o-frito-com-casca.jpg', 'Camarão frito', 'Geovanna Duarte', 4, '35 min');";
    await db.execute(sql);

    //-- SALADAS (categoria_id = 5)
    sql =
      "INSERT INTO Receitas_Categoria (urlImagem, receita, user, categoria_id, timer) VALUES ('https://minhasreceitinhas.com.br/wp-content/uploads/2025/03/salada-caesar-para-4-pessoas.jpg', 'Salada Caesar', 'Maria Eduarda', 5, '20 min');";
    await db.execute(sql);

    sql =
      "INSERT INTO Receitas_Categoria (urlImagem, receita, user, categoria_id, timer) VALUES ('https://s2-receitas.glbimg.com/gQcYutciej1aRVKbDWNKdOFIn04=/1280x0/filters:format(jpeg)/https://i.s3.glbimg.com/v1/AUTH_1f540e0b94d8437dbbc39d567a1dee68/internal_photos/bs/2022/a/s/qsN6WGRjK6h9tdRv4kaw/salada-de-grao-de-bico.jpg', 'Salada de Grão de Bico', 'Clarice Feitoza', 5, '25 min');";
    await db.execute(sql);

    sql =
      "INSERT INTO Receitas_Categoria (urlImagem, receita, user, categoria_id, timer) VALUES ('https://cdn.casaeculinaria.com/wp-content/uploads/2023/02/05161703/Salada-Caprese.webp', 'Salada Caprese', 'Davy Ferreira', 5, '20 min');";
    await db.execute(sql);

    sql =
      "INSERT INTO Receitas_Categoria (urlImagem, receita, user, categoria_id, timer) VALUES ('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSYBrLwLq9L57Wi0wkp9gnBTugM59Z7STGATlRIKnmH5Xv3Tf-LiZuT_lvl&s=10', 'Salada de Quinoa', 'Isaac Gabriel', 5, '15 min');";
    await db.execute(sql);

    sql =
      "INSERT INTO Receitas_Categoria (urlImagem, receita, user, categoria_id, timer) VALUES ('https://receitasbaratas.com.br/wp-content/uploads/2024/12/Salada-Tropical-que-Encanta-na-Ceia.jpg.webp', 'Salada Tropical', 'Carlos Gardel', 5, '25 min');";
    await db.execute(sql);

    //-- SOBREMESAS (categoria_id = 6)
    sql =
      "INSERT INTO Receitas_Categoria (urlImagem, receita, user, categoria_id, timer) VALUES ('https://teamodoce.com.br/wp-content/uploads/2025/03/Pudim-de-Leite-Condensado-com-Furinhos-Novo.webp', 'Pudim de Leite', 'Pedro Henrique', 6, '1h 20 min');";
    await db.execute(sql);

    sql =
      "INSERT INTO Receitas_Categoria (urlImagem, receita, user, categoria_id, timer) VALUES ('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSkvTCSefdZ2323p-sxfn8J9v-fa25LlzgnpR2v1vVj-zdJCnUfaQxe8tI&s=10', 'Brigadeiro', 'Alaryce Jaylle', 6, '10 min');";
    await db.execute(sql);

    sql =
      "INSERT INTO Receitas_Categoria (urlImagem, receita, user, categoria_id, timer) VALUES ('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR209Musz7Dn1FMMqfT1-kw76gPa_C8D0yC56W7fbf-4DaC7YOQ43sdBTI&s=10', 'Mousse de Maracujá', 'Pedro Antonio', 6, '25 min');";
    await db.execute(sql);

    sql =
      "INSERT INTO Receitas_Categoria (urlImagem, receita, user, categoria_id, timer) VALUES ('https://guiadacozinha.com.br/wp-content/uploads/2007/01/petit-gateau.jpg', 'Petit Gateau', 'Sabynna Louyse', 6, '30 min');";
    await db.execute(sql);

    sql =
      "INSERT INTO Receitas_Categoria (urlImagem, receita, user, categoria_id, timer) VALUES ('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRpV8HQGlAAy1MxJLB4w_NIVgsdZUmShjZMzWq-kyd3L9QcTEb2VLPaWAQ&s=10', 'Sorvete Caseiro', 'Wecikly Monteiro', 6, '3h');";
    await db.execute(sql);

    //-- TORTAS (categoria_id = 7)
    sql =
      "INSERT INTO Receitas_Categoria (urlImagem, receita, user, categoria_id, timer) VALUES ('https://www.oetker.com.br/assets/recipes/assets/d044a4ef3cfe45998593f500c00942ef/1272x764/torta-de-limo.jpg', 'Torta de Limão', 'Keysson Ruan', 7, '3h 30 min');";
    await db.execute(sql);

    sql =
      "INSERT INTO Receitas_Categoria (urlImagem, receita, user, categoria_id, timer) VALUES ('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTksZTzsLer0q1IO991Vi_TH-1Q7Aivba1sv-8LuiG7gx-bAqssIP7BBPU&s=10', 'Torta de Frango', 'Matheus Soares', 7, '1h');";
    await db.execute(sql);

    sql =
      "INSERT INTO Receitas_Categoria (urlImagem, receita, user, categoria_id, timer) VALUES ('https://static.ndmais.com.br/2026/01/torta-de-chocolate-1-1300x731.jpg', 'Torta de Chocolate', 'Arthur Vinicius', 7, '1h 30 min');";
    await db.execute(sql);

    sql =
      "INSERT INTO Receitas_Categoria (urlImagem, receita, user, categoria_id, timer) VALUES ('https://www.receitasja.com.br/wp-content/uploads/2025/04/Torta-de-Morango.jpg', 'Torta de Morango', 'Kevin William', 7, '2h');";
    await db.execute(sql);

    sql =
      "INSERT INTO Receitas_Categoria (urlImagem, receita, user, categoria_id, timer) VALUES ('https://guiadacozinha.com.br/wp-content/uploads/2021/08/torta-salgada-receitas.jpg', 'Torta Salgada', 'Luana Kellyn', 7, '2h 30min');";
    await db.execute(sql);
  }
}
// "INSERT INTO Receitas_Categoria (urlImagem, receita, user, categoria