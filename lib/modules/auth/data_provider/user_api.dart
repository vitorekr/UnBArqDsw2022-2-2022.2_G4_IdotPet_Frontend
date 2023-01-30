import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:idotpet/modules/auth/data_provider/iuser_api.dart';
import 'package:idotpet/modules/auth/entities/user.dart';

class UserApi implements IUserApi {
  late dynamic _token;
  dynamic get token => _token;
  
  @override
  Future<bool> userLogin(String username, String password) async {
    final Dio dio = Dio();
    var formData = FormData.fromMap({
        'username': username,
        'password': password
    });
    // var params = {"username": "user@example.com", "password": "string"};
    final result = await dio.post('http://192.168.0.184:8000/user/login', data: formData);
    _token = result.data;
    if(result.statusCode == 200) {
      return true;
    } else {
      return false;
    }
  }

  @override
  Future<User> getUser() async {
    final Dio dio = Dio();
    final json = await dio.get('http://192.168.0.184:8000/user/logged',
      options: Options(headers: {
        'Authorization': _token["token_type"] + ' ' + _token["access_token"]
      }));
    // final maps = jsonDecode(json.data);
    final user = User.fromMap(json.data);
    //final user = List<User>.from(maps.map((x) => User.fromMap(x)));
    return user;
  }

  @override
  Future<bool> userSignUp(String username, String password, String name, String cpf) async {
    final Dio dio = Dio();
    var formData = {
        'name': name,
        'user_type': 'user',
        'email': username,
        'password': password,
        'birth_day': "1999-03-02",
        'cpf': cpf,
    };
    final jsonEncodeData = jsonEncode(formData);
    try{
      final result = await dio.post('http://192.168.0.184:8000/user/', data: jsonEncodeData);
      if(result.statusCode == 201) {
      return true;
    } else {
      return false;
    }
    } on DioError catch(e){
      print(e.message);
      print(e.response);
      print(e.requestOptions);
      print(e.error);
      return false;
    }

    
  }
}
