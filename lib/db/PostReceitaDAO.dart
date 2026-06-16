import 'package:projeto/domain/post_receita.dart';
import 'package:sqflite/sqflite.dart';
import 'package:projeto/db/db_helper.dart';

class PostReceitadDao {
  Future<List<PostReceita>> listarPosts() async {
    Database db = await DBHelper().initDB();

    var result = await db.rawQuery('SELECT * FROM POSTRECEITA');

    List<PostReceita> listaposts = [];
    for (var json in result) {
      //

      PostReceita postReceita = PostReceita.fromJson(json);
      listaposts.add(postReceita);
    }

    return listaposts;
  }
}