import 'package:projeto/domain/post_receita.dart';
import 'package:dio/dio.dart';

class PostReceitaApi {
  final dio = Dio();
  String baseUrl = 'https://my-json-server.typicode.com/IsabelaFer/fake_api';

  Future<List<PostReceita>> listarPostReceitas() async {
    final response = await dio.get('$baseUrl/posts');

    List<PostReceita> lista = [];

    if (response.statusCode == 200) {
      for (var json in response.data) {
        PostReceita postReceita = PostReceita.fromJson(json);
        lista.add(postReceita);
      }
    }

    return lista;
  }
}