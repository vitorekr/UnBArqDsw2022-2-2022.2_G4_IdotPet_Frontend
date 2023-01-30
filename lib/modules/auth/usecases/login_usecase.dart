import 'package:get/get.dart';
import 'package:idotpet/modules/auth/data_provider/iuser_api.dart';
import 'package:idotpet/modules/auth/data_provider/user_api.dart';

class LoginUseCase {
  final sla = Get.put<IUserApi>(UserApi());
  final _userApi = Get.find<IUserApi>();

  Future<bool> call(String username, String password) async {
    return await _userApi.userLogin(username, password);
  }
}