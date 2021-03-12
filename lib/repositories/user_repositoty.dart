import 'package:email_marketing/models/user.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
const baseUrl = "http://127.0.0.1/email_marketing/userApi.php";
class UserRepository{
    UserRepository();
    Future<User> fetchDate(String url) async{
      print(url);
      final response = await http.get(baseUrl);
      if(response.statusCode != 200){
        print("Error get Api from server");
        throw Exception('Error getting notify from server');
      }
      final dataJson = jsonDecode(response.body);
      return  User.fromJson(dataJson);
    }
}