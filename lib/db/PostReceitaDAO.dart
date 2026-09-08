import 'package:projeto/domain/post_receita.dart';
import 'package:sqflite/sqflite.dart';

import 'db_helper.dart';

class PostReceitaDao {

  Future<List<PostReceita>> listarPostReceitas() async {
    Database db = await DBHelper().initDB();
    var result = await db.rawQuery('SELECT * FROM POSTRECEITA');

    List<PostReceita> lista = [];

    for (var json in result) {
      PostReceita post = PostReceita.fromJson(json);

      lista = result.map((json) => PostReceita.fromJson(json)).toList();

      lista.add(post);
    }

    await Future.delayed(Duration(seconds: 5));
    return lista;
  }
}