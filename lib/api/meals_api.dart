import 'package:dio/dio.dart';
import 'package:projeto/domain/meals.dart';

class Mealsapi {
  final dio = Dio();
  String baseUrl = 'https://www.themealdb.com/api/json/v1/1';

  Future<List<Meals>> listarReceitasPorNome(String nome) async {
    final response = await dio.get('$baseUrl/search.php?s=$nome');

    List<Meals> lista = [];

    if (response.statusCode == 200 && response.data['meals'] != null) {
      for (var json in response.data['meals']) {
        lista.add(Meals.fromJson(json));
      }
    }

    return lista;
  }
}