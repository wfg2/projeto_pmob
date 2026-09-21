import 'package:projeto/domain/PropriedadesReceitas.dart';
import 'package:sqflite/sqflite.dart';
import 'db_helper.dart';

class PropriedadesReceitasDAO {
  Future<List<PropriedadeReceitas>> listarPropriedadesReceitas() async {
    Database db = await DbHelper().initDB();

    var result = await db.rawQuery('SELECT * FROM RECEITAS');

    List<PropriedadeReceitas> lista = [];
    for (var json in result) {
      PropriedadeReceitas prop = PropriedadeReceitas.fromJson(json);
      lista.add(prop);
    }

    await Future.delayed(Duration(seconds: 5));
    return lista;
  }
}