import 'package:get/get.dart';
import 'package:idotpet/modules/auth/entities/user.dart';
import 'package:idotpet/modules/auth/usecases/get_user_usecase.dart';

class UserController extends GetxController {
  final _getUserUseCase = Get.find<GetUserUseCase>();

  late User _user;
  User get user => _user;

  Future<User> getUser() async {
    final user = await _getUserUseCase();
    _user = user;
    return user;
  }

}