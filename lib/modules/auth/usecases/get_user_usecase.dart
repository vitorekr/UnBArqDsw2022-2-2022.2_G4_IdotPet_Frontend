import 'package:get/get.dart';
import 'package:idotpet/modules/auth/data_provider/iuser_api.dart';
import 'package:idotpet/modules/auth/entities/user.dart';

class GetUserUseCase {
  final _userApi = Get.find<IUserApi>();

  Future<User> call() async {
    return await _userApi.getUser();
  }
}