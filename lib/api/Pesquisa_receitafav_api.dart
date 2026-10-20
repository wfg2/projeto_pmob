import 'package:dio/dio.dart';
import 'package:projeto/domain/Pesquisa_receitaFavorita.dart';

class PesquisaReceitafavoritaAPI {

  final dio = Dio();
  Future<List<PesquisaReceitafavorita>> listarReceitasFavoritas(String query) async {

    final url = 'https://api.spoonacular.com/recipes/complexSearch?apiKey=52dede2b6a1a42dfbe0cdf96680655a3&query=$query&addRecipeInformation=true&number=10';

    final response = await dio.get(url);

    List<PesquisaReceitafavorita> lista = [];

    if (response.statusCode == 200) {
      List results = response.data['results'];
      for (var json in results) {
        lista.add(PesquisaReceitafavorita.fromJson(json));
      }
    }

    return lista;
  }
}