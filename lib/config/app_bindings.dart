import 'package:get/get.dart';
import 'package:idotpet/modules/auth/controllers/session_controller.dart';
import 'package:idotpet/modules/auth/controllers/user_controller.dart';
import 'package:idotpet/modules/auth/data_provider/iuser_api.dart';
import 'package:idotpet/modules/auth/data_provider/user_api.dart';
import 'package:idotpet/modules/auth/usecases/get_user_usecase.dart';

class AppBindings extends Bindings {
  @override
  void dependencies() {
    Get.put<GetUserUseCase>(GetUserUseCase());
    Get.put<IUserApi>(UserApi());
    Get.put<UserController>(UserController());
    Get.put<SessionController>(SessionController());
  }
}
