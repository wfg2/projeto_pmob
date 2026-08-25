import 'package:projeto/db/db_helper.dart';
import 'package:projeto/domain/user.dart';
import 'package:sqflite/sqlite_api.dart';

class UserDao {
  Future<bool> login(String username, String password) async {
    Database db = await DBHelper().initDB();
    String sql = '''
      SELECT *
      FROM USER
      WHERE username = ? AND password = ?;    
    ''';

    var result = await db.rawQuery(sql, [username, password]);
    return result.isNotEmpty;
  }

  saveUser(User user) async {
    Database db = await DBHelper().initDB();
    db.insert('USER', user.toJson());
  }
}