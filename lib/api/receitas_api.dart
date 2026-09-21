import 'package:projeto/domain/Receitas.dart';
import 'package:dio/dio.dart';

class ReceitasApi {
  final dio = Dio();
  String baseUrl = '';//LINK BASE DA API VERDADEIRA, NÃO ESQUECER

  findByName(String nome) async {
    late Receitas receita;
    final response = await dio.get('$baseUrl'); //LINK DA API VERDADEIRA

    if (response.statusCode == 200) {
      receita = Receitas.fromJson(response.data);
    }

    return receita;
  }
}