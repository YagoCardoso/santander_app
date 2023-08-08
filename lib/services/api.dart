import '../models/user_model/user_model.dart';
import 'package:http/http.dart' as http;

class ApiApp {
  static Future<UserModel> fetchUser(int id) async {
    // var result = await http
    //     .get(Uri.parse("https://sdw-2023-prd.up.railway.app/users/$id"));
    var result = await http.get(
        Uri.parse("https://yagocardoso.github.io/santander_app_find_one.json"));
    return UserModel.fromJson(result.body);
  }
}
