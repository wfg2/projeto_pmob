import 'package:projeto/domain/receitasCategorias.dart';
import 'package:sqflite/sqflite.dart';
import 'db_helper.dart';

class Receitascategoriadao {
  Future<List<Receitascategorias>> listarReceitascategorias(int categoriaId) async {
    Database db = await DbHelper().initDB();

    var result = await db.rawQuery('SELECT * FROM RECEITAS_CATEGORIA WHERE categoria_id = ?', [categoriaId]);

    List<Receitascategorias> lista = [];

    for (var json in result) {
      Receitascategorias receita = Receitascategorias.fromJson(json);
      lista.add(receita);
    }

    return lista;
  }
}
