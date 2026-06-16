import 'package:projeto/domain/categoria.dart';
import 'package:sqflite/sqflite.dart';
import 'db_helper.dart';

class CategoriaDao {
  Future<List<Categoria>> listarCategorias() async {
    Database db = await DbHelper().initDB();

    var result = await db.rawQuery('SELECT * FROM CATEGORIA');

    List<Categoria> lista = [];
    for (var json in result) {
      Categoria categoria = Categoria.fromJson(json);
      lista.add(categoria);
    }

    return lista;
  }
}