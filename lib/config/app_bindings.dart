import 'package:get/get.dart';
import 'package:idotpet/modules/auth/controllers/session_controller.dart';
import 'package:idotpet/modules/auth/controllers/user_controller.dart';
import 'package:idotpet/modules/auth/data_provider/iuser_api.dart';
import 'package:idotpet/modules/auth/data_provider/user_api.dart';
import 'package:idotpet/modules/auth/usecases/get_user_usecase.dart';
import 'package:idotpet/modules/auth/usecases/login_usecase.dart';
import 'package:idotpet/modules/auth/usecases/signup_usecase.dart';
import 'package:idotpet/modules/cadastroPet/controllers/pet_controller.dart';
import 'package:idotpet/modules/cadastroPet/data_provider/pet_api.dart';
import 'package:idotpet/modules/cadastroPet/entities/ipet_api.dart';
import 'package:idotpet/modules/cadastroPet/usecases/create_pet_usecase.dart';
import 'package:idotpet/modules/cadastroPet/usecases/get_pet_usecase.dart';

class AppBindings extends Bindings {
  @override
  void dependencies() {
    Get.put<GetUserUseCase>(GetUserUseCase());
    Get.put<LoginUseCase>(LoginUseCase());
    Get.put<SignUpUseCase>(SignUpUseCase());
    Get.put<IUserApi>(UserApi());
    Get.put<UserController>(UserController());
    Get.put<SessionController>(SessionController());

    Get.put<CreatePetUseCase>(CreatePetUseCase());
    Get.put<GetPetUseCase>(GetPetUseCase());
    Get.put<IPetApi>(PetApi());
    Get.put<PetController>(PetController());
  }
}
