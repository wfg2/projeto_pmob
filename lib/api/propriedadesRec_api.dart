import 'package:projeto/domain/PropriedadesReceitas.dart';
import 'package:dio/dio.dart';

class PropriedadesRecApi {
  final dio = Dio();
  String baseUrl = 'https://my-json-server.typicode.com/wfg2/api_fake';

  Future<List<PropriedadeReceitas>> listarPropriedades() async {
    final response = await dio.get('$baseUrl/receitas');

    List<PropriedadeReceitas> lista = [];

    if (response.statusCode == 200) {
      for (var json in response.data) {
        PropriedadeReceitas propriedadeReceitas = PropriedadeReceitas.fromJson(json);
        lista.add(propriedadeReceitas);
      }
    }

    return lista;
  }
}