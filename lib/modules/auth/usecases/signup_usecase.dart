import 'package:get/get.dart';
import 'package:idotpet/modules/auth/data_provider/iuser_api.dart';
import 'package:idotpet/modules/auth/data_provider/user_api.dart';

class SignUpUseCase {
  final sla = Get.put<IUserApi>(UserApi());
  final _userApi = Get.find<IUserApi>();

  Future<bool> call(String username, String password, String name, String cpf) async {
    return await _userApi.userSignUp(username, password, name, cpf);
  }
}