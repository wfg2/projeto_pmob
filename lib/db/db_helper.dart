import 'dart:async';

import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DBHelper {
  Future<Database> initDB() async {
    String path = await getDatabasesPath();
    String dbNome = 'dende.db';
    String dbPath = join(path, dbNome);

    Database db = await openDatabase(dbPath, version: 1, onCreate: onCreateDB);
    return db;
  }

  Future<void> onCreateDB(Database db, int version) async {
    String sql = '''
      CREATE TABLE POSTRECEITA (
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
        ingredientes TEXT,
        preparo TEXT
      )
    ''';
    await db.execute(sql);

    // Post 1 – Pelmeni
    sql = '''
      INSERT INTO POSTRECEITA (
        fotodeperfil, nomeusuario, dataehora, fotopost, legenda,
        likes, comentarios, compartilhamentos,
        nomereceita, temporeceita, nivelreceita, fotoreceita,
        ingredientes, preparo
      ) VALUES (
        'https://concertsinbrazil.com/wp-content/uploads/2024/05/image-13.png',
        'Sofya Plotnikova',
        '22 de Mai, 09:00',
        'https://upload.wikimedia.org/wikipedia/commons/d/df/Pelmeni_Russian.jpg',
        'Pelmeni feito com amor para aquecer o coração. 🇷🇺',
        '3.1k', '95', '44',
        'Pelmeni', '70', 'Difícil',
        'https://s2-receitas.glbimg.com/ZCYRb-UBLbCuCImCXlBG_Uvu_bA=/0x0:1920x1080/640x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_1f540e0b94d8437dbbc39d567a1dee68/internal_photos/bs/2025/R/v/Pdk98iRcqk1ndCsA0KBQ/harumaki-em-casa-receitas-faceis-para-voce-fazer-seu-rolinho-primavera.jpg',
        'Massa: 3 xícaras de farinha de trigo||| Massa: 1 ovo||| Massa: 1 xícara de água morna||| Massa: 1/2 colher de chá de sal||| Recheio: 300g de carne moída (mistura de porco e boi)||| Recheio: 1 cebola grande picada finamente||| Recheio: Sal e pimenta-do-reino a gosto',
        'Para a massa, misture a farinha, o ovo, a água e o sal. Sove bem até ficar homogênea e deixe descansar por 30 minutos.||| Para o recheio, misture a carne moída com a cebola picada, o sal e a pimenta-do-reino.||| Abra a massa bem fina com um rolo e corte pequenos círculos usando a borda de um copo.||| Coloque uma colher de chá do recheio no centro de cada círculo, dobre ao meio para fechar (como um pastelzinho) e junte as duas pontas para dar o formato característico.||| Cozinhe em água fervente com sal (ou caldo de carne) por cerca de 5 minutos após subirem à superfície. Sirva com manteiga ou creme azedo.'
      )
    ''';
    await db.execute(sql);

    // Post 2 – Rolinho Primavera
    sql = '''
      INSERT INTO POSTRECEITA (
        fotodeperfil, nomeusuario, dataehora, fotopost, legenda,
        likes, comentarios, compartilhamentos,
        nomereceita, temporeceita, nivelreceita, fotoreceita,
        ingredientes, preparo
      ) VALUES (
        'https://upload.wikimedia.org/wikipedia/commons/b/b0/Ariel_Tsang_20221210.jpg',
        'Ariel Tsang',
        '23 de Mai, 08:30',
        'https://moinhoglobo.com.br/wp-content/uploads/2021/09/rolinho-primavera.jpg',
        'Rolinhos Primavera crocantes. 🇭🇰',
        '2.5k', '67', '30',
        'Rolinho Primavera', '45', 'Médio',
        'https://images.unsplash.com/photo-1623341214825-9f4f963727da?w=300',
        '10 folhas de massa para rolinho primavera (ou massa filo)|||1 xícara de repolho cortado em tiras bem finas|||1/2 xícara de cenoura ralada em tiras finas||| 100g de carne de porco ou frango moída (opcional)||| 2 colheres de sopa de molho de soja (shoyu)||| 1 colher de sopa de óleo de gergelim||| Óleo para fritar||| 1 colher de sopa de amido de milho diluído em um pouco de água (para selar)',
        'Em uma frigideira ou wok, aqueça o óleo de gergelim e refogue a carne até dourar.|||Adicione o repolho e a cenoura, refogando rapidamente para que fiquem cozidos, mas ainda crocantes. Tempere com o molho de soja e deixe esfriar.||| Abra uma folha de massa e coloque uma porção do recheio em um dos cantos.||| Enrole até a metade, dobre as duas laterais para dentro e continue enrolando até o final.||| Pincele a mistura de amido de milho na ponta final para selar bem o rolinho.p||| Frite em óleo bem quente até que fiquem dourados e crocantes. Escorra em papel toalha.'
      )
    ''';
    await db.execute(sql);

    // Post 3 – Adobo
    sql = '''
      INSERT INTO POSTRECEITA (
        fotodeperfil, nomeusuario, dataehora, fotopost, legenda,
        likes, comentarios, compartilhamentos,
        nomereceita, temporeceita, nivelreceita, fotoreceita,
        ingredientes, preparo
      ) VALUES (
        'https://portalpopline.com.br/wp-content/uploads/2025/05/now-united-jayna.jpg',
        'Jayna Hughes',
        '23 de Mai, 12:45',
        'https://deliciouslyrushed.com/wp-content/uploads/2023/11/chicken-adobo-feature-image.jpg',
        'Filipino Chicken Adobo. Melhor prato do mundo! 🇵🇭',
        '6.7k', '320', '140',
        'Adobo', '55', 'Médio',
        'https://deliciouslyrushed.com/wp-content/uploads/2023/11/chicken-adobo-feature-image.jpg',
        '1kg de sobrecoxas de frango ou carne de porco em pedaços||| 1/2 xícara de molho de soja (shoyu)||| 1/3 xícara de vinagre de cana ou vinagre branco||| 1 cabeça de alho amassada/picada||| 3 folhas de louro||| 1 colher de sopa de pimenta-do-reino em grãos||| 1 colher de sopa de óleo vegetal||| 1 xícara de água',
        'Em uma tigela, marine a carne com o molho de soja e o alho por pelo menos 30 minutos.||| Aqueça o óleo em uma panela grande, retire a carne da marinada (guarde o líquido) e sele os pedaços até dourarem de todos os lados.||| Despeje o líquido da marinada restante, a água, as folhas de louro e os grãos de pimenta na panela.||| Deixe ferver, abaixe o fogo, tampe a panela e cozinhe por cerca de 30 minutos.||| Adicione o vinagre (não mexa imediatamente, deixe o álcool evaporar por 2 minutos).||| Cozinhe destampado até que a carne esteja bem macia e o molho tenha reduzido e engrossado.'
      )
    ''';
    await db.execute(sql);

    // Post 4 – Tteokbokki
    sql = '''
      INSERT INTO POSTRECEITA (
        fotodeperfil, nomeusuario, dataehora, fotopost, legenda,
        likes, comentarios, compartilhamentos,
        nomereceita, temporeceita, nivelreceita, fotoreceita,
        ingredientes, preparo
      ) VALUES (
        'https://cadernopop.com.br/wp-content/uploads/2024/12/heyoon-1024x576.webp',
        'Heyoon Jeong',
        '24 de Mai, 10:15',
        'https://www.sabornamesa.com.br/media/k2/items/cache/b96b0675996074d026b87e19f230d72d_XL.jpg',
        'Apimentado e delicioso: Tteokbokki! 🇰🇷',
        '8.1k', '450', '300',
        'Tteokbokki', '30', 'Médio',
        'https://www.sabornamesa.com.br/media/k2/items/cache/b96b0675996074d026b87e19f230d72d_XL.jpg',
        '350g de Tteok (bolos de arroz coreanos em formato de palito)||| 2 colheres de sopa de Gochujang (pasta de pimenta coreana)||| 1 colher de sopa de Gochugaru (pimenta coreana em pó/flocos)||| 1 colher de sopa de açúcar||| 1 colher de sopa de molho de soja (shoyu)||| 2 xícaras de caldo de anchova (ou água)||| 100g de eomuk (bolo de peixe coreano fatiado - opcional)||| 2 talos de cebolinha cortados em pedaços grandes',
        'Se os bolos de arroz estiverem congelados ou muito duros, mergulhe-os em água morna por 10 minutos antes de usar.||| Em uma panela ou frigideira funda, adicione o caldo (ou água), o gochujang, o gochugaru, o açúcar e o shoyu. Mexa bem e leve para ferver.||| Adicione os bolos de arroz (tteok) e o bolo de peixe (eomuk).||| Cozinhe em fogo médio-baixo por cerca de 10 a 15 minutos, mexendo frequentemente para que os bolos de arroz não grudem no fundo.||| Quando o molho estiver reduzido, espesso e os bolos de arroz estiverem macios e mastigáveis, adicione a cebolinha.||| Cozinhe por mais 1 minuto e sirva quente.'
      )
    ''';
    await db.execute(sql);

    // Post 5 – Korvapuusti
    sql = '''
      INSERT INTO POSTRECEITA (
        fotodeperfil, nomeusuario, dataehora, fotopost, legenda,
        likes, comentarios, compartilhamentos,
        nomereceita, temporeceita, nivelreceita, fotoreceita,
        ingredientes, preparo
      ) VALUES (
        'https://pt.quizur.com/_image?href=https%3A%2F%2Fimg.quizur.com%2Ff%2Fimg5f12e302b93a64.04628293.jpg%3FlastEdited%3D1595073305&w=600&h=600&f=webp',
        'Joalin Loukamaa',
        '24 de Mai, 16:00',
        'https://www.valio.fi/cdn-cgi/image/format=auto/https://cdn-wp.valio.fi/valio-fi/2023/04/37674-korvapuustit-1300x867.jpeg',
        'Korvapuusti! Os melhores pãezinhos de canela. 🇫🇮',
        '5.9k', '200', '100',
        'Korvapuusti', '90', 'Médio',
        'https://www.valio.fi/cdn-cgi/image/format=auto/https://cdn-wp.valio.fi/valio-fi/2023/04/37674-korvapuustit-1300x867.jpeg',
        'Massa: 250ml de leite morno||| Massa: 1 pacote (7g) de fermento biológico seco||| Massa: 100g de açúcar||| Massa: 1 colher de sopa de cardamomo em pó||| Massa: 1/2 colher de chá de sal||| Massa: 500g de farinha de trigo||| Massa: 100g de manteiga em temperatura ambiente||| Recheio: 80g de manteiga amolecida||| Recheio: 4 colheres de sopa de açúcar||| Recheio: 2 colheres de sopa de canela em pó||| Finalização: 1 ovo batido e açúcar perolado para salpicar',
        'Dissolva o fermento no leite morno com o açúcar. Adicione o cardamomo, o sal e vá acrescentando a farinha aos poucos.||| Adicione as 100g de manteiga amolecida e sove a massa até que fique lisa e elástica. Cubra e deixe crescer por 1 hora.||| Abra a massa com um rolo formando um grande retângulo (cerca de 30x60cm).||| Espalhe as 80g de manteiga do recheio por toda a superfície e polvilhe o açúcar e a canela uniformemente.||| Enrole a massa firmemente como um rocambole (a partir do lado mais comprido).||| Corte o rolo em fatias diagonais alternadas (formando trapézios/formatos em V).||| Coloque cada pedaço em uma assadeira com a parte mais estreita para cima e pressione o centro firmemente com os polegares para criar o formato tradicional das "orelhas esbofetadas".||| Deixe crescer por mais 20 minutos, pincele com o ovo batido, salpique o açúcar perolado e asse em forno preaquecido a 200°C por 10 a 12 minutos até dourar.'
      )
    ''';
    await db.execute(sql);

    sql = '''CREATE TABLE USER ( 
      username TEXT PRIMARY KEY,
      password TEXT
    ); ''';

    await db.execute(sql);

    sql = "INSERT INTO USER (username, password) VALUES ('isabela@gmail.com', '123456');";
    await db.execute(sql);
  }
}