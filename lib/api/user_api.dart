import 'package:dio/dio.dart';
import 'package:projeto/domain/user.dart';

class UserApi {
  final Dio dio = Dio();
  String baseUrl = 'https://my-json-server.typicode.com/IsabelaFer/fake_api';

  Future<bool> login(String username, String password) async {
    try {
      final response = await dio.get('$baseUrl/users');

      if (response.statusCode == 200) {
        List usuarios = response.data;

        for (var json in usuarios) {
          if (json['username'] == username && json['password'] == password) {
            return true;
          }
        }
      }
      return false;
    } catch (e) {
      return false;
    }
  }
  
  Future<bool> cadastrar(User user) async {
    try {
      final response = await dio.post(
        '$baseUrl/users',
        data: user.toJson(),
      );
      return response.statusCode == 201 || response.statusCode == 200;
    } catch (e) {
      return false;
    }
  }
}