import 'package:get/get.dart';
import 'package:idotpet/modules/auth/entities/user.dart';
import 'package:idotpet/modules/auth/usecases/get_user_usecase.dart';
import 'package:idotpet/modules/auth/usecases/login_usecase.dart';
import 'package:idotpet/modules/auth/usecases/signup_usecase.dart';

class UserController extends GetxController {
  final _getUserUseCase = Get.find<GetUserUseCase>();
  final _getSignUpUseCase = Get.find<SignUpUseCase>();
  final _login = Get.find<LoginUseCase>();

  late User _user;
  User get user => _user;

  Future<bool> logIn(String username, String password) async {
    final isLooged = await _login.call(username, password);
    return isLooged;
  }
  

  Future<bool> signUp(String username, String password, String name, String cpf) async {
    final signUp = await _getSignUpUseCase.call(username, password, name, cpf);
    return signUp;
  }

  Future<User> getUser() async {
    final user = await _getUserUseCase();
    _user = user;
    return user;
  }

}