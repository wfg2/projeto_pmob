import 'package:dio/dio.dart';
import 'package:projeto/domain/categoria.dart';

class CategoriasApi {
  final dio = Dio();
  String baseUrl = 'https://my-json-server.typicode.com/Richard-Braga/fake_api';

  Future<List<Categoria>> listarCategorias() async {
    final response = await dio.get('$baseUrl/Categorias');

    List<Categoria> lista = [];

    if (response.statusCode == 200) {
      for (var json in response.data) {
        Categoria categoria = Categoria.fromJson(json);
        lista.add(categoria);
      }
    }

    return lista;
  }
}