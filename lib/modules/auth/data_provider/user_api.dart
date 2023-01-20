import 'package:dio/dio.dart';
import 'package:idotpet/modules/auth/data_provider/iuser_api.dart';
import 'package:idotpet/modules/auth/entities/user.dart';

class UserApi implements IUserApi {
  @override
  Future<void> userLogin() async {
    final Dio dio = Dio();
    var formData = FormData.fromMap({
        'username': 'user@example.com',
        'password': 'string'
    });
    // var params = {"username": "user@example.com", "password": "string"};
    await dio.post('http://192.168.0.184:8000/user/login', data: formData);

  }

  @override
  Future<User> getUser() async {
    final Dio dio = Dio();
    final json = await dio.get('http://192.168.0.184:8000/user/1',
      options: Options(headers: {
        'Authorization': 'Bearer ' + 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE2NzQ3ODI2NDAsInN1YiI6IjEiLCJpYXQiOjE2NzQxNzc4NDAsImlzcyI6Iklkb3RQZXQifQ.4U6RNbfb27uAE1sPtAx4KFr89WjcWHfoL0T7Fl-4UWk' 
      }));
    // final maps = jsonDecode(json.data);
    final user = User.fromMap(json.data);
    //final user = List<User>.from(maps.map((x) => User.fromMap(x)));
    return user;
  }
}
