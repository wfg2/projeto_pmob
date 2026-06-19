import 'package:path/path.dart';
import 'package:projeto/domain/post_receita.dart'; // ajuste o caminho
import 'package:sqflite/sqflite.dart';

import 'db_helper.dart';

class PostReceitaDao {
  static const String separador = '|||';

  Future<List<PostReceita>> listarPostReceitas() async {
    Database db = await DBHelper().initDB();
    var result = await db.rawQuery('SELECT * FROM POSTRECEITA');

    List<PostReceita> lista = [];
    for (var json in result) {
      // Converte ingredientes e preparo de texto para List<String>
      String ingredientesStr = json['ingredientes'] as String? ?? '';
      String preparoStr = json['preparo'] as String? ?? '';

      List<String> ingredientes = ingredientesStr.split(separador);

      List<String> preparo = preparoStr.split(separador);

      Map<String, dynamic> postJson = {
        'fotodeperfil': json['fotodeperfil'] as String? ?? '',
        'nomeusuario': json['nomeusuario'] as String? ?? '',
        'dataehora': json['dataehora'] as String? ?? '',
        'fotopost': json['fotopost'] as String? ?? '',
        'legenda': json['legenda'] as String? ?? '',
        'likes': json['likes'] as String? ?? '',
        'comentarios': json['comentarios'] as String? ?? '',
        'compartilhamentos': json['compartilhamentos'] as String? ?? '',
        'nomereceita': json['nomereceita'] as String? ?? '',
        'temporeceita': json['temporeceita'] as String? ?? '',
        'nivelreceita': json['nivelreceita'] as String? ?? '',
        'fotoreceita': json['fotoreceita'] as String? ?? '',
        'ingredientes': ingredientes,
        'preparo': preparo,
      };

      PostReceita post = PostReceita.fromJson(postJson);
      lista.add(post);
    }

    return lista;
  }
}