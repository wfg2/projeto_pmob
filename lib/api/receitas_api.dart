import 'package:projeto/domain/Receitas.dart';
import 'package:dio/dio.dart';

class ReceitasApi {
  final dio = Dio();

  String baseUrl = 'https://api.api-ninjas.com/v3/recipe';
  String apiKey = 'ddX61tzDo91v0esjtwbHkwYrvidgFgfpBYDd67JQ';

  findByName(String name) async {
    late Receitas receita;

    final response = await dio.get(
      baseUrl,
      queryParameters: {'title': name},
      options: Options(headers: {'X-Api-Key': apiKey}),
    );

    if (response.statusCode == 200) {
      receita = Receitas.fromJson(response.data[0]);
    }

    return receita;
  }
}