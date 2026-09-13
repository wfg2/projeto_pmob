import 'package:dio/dio.dart';
import 'package:projeto/domain/receitas_categorias.dart';

class ReceitasCategoriaApi {
  final dio = Dio();
  String baseUrl = 'https://my-json-server.typicode.com/Richard-Braga/fake_api';

  Future<List<Receitascategorias>> listarReceitasCategoria(int categoriaId) async {
    final response = await dio.get('$baseUrl/Receitas_Categoria');

    List<Receitascategorias> lista = [];

    if (response.statusCode == 200) {
      for (var json in response.data) {
        Receitascategorias receitascategorias = Receitascategorias.fromJson(json);
        
        if (receitascategorias.categoria_id == categoriaId) {
          lista.add(receitascategorias);
        }
      }
    }

    return lista;
  }
}