import 'package:dio/dio.dart';
import 'package:projeto/domain/receitaFavorita.dart';

class ReceitafavApi {
  final dio =  Dio();
  String baseURl = 'https://my-json-server.typicode.com/JoaoVitorBS-0/fake_api';
  
  Future<List<ReceitaFavorita>> listarReceitasFavoritas() async {
    final response = await dio.get('$baseURl/RECEITAFAV');

    List<ReceitaFavorita> lista = [];

    if(response.statusCode == 200) {
      for (var json in response.data) {
        ReceitaFavorita receitaFavorita = ReceitaFavorita.fromJson(json);
        lista.add(receitaFavorita);
      }
    }
    return lista;
  }
}