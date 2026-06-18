import 'package:projeto/domain/receitaFavorita.dart';
import 'package:sqflite/sqflite.dart';

import 'db_helper.dart';

class FavoritosDao {
   Future<List<ReceitaFavorita>> listarReceitasFavoritas() async{
    Database db = await DbHelper().initDB();

    var result = await db.rawQuery('SELECT * FROM RECEITAFAV');

    List<ReceitaFavorita> lista = [];
    for (var json in result){
      ReceitaFavorita receitaFavorita = ReceitaFavorita.fromJson(json);
      lista.add(receitaFavorita);
  }
    return lista;
  }
}