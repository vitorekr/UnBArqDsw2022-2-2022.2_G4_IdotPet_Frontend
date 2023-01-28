import 'package:get/get.dart';
import 'package:idotpet/modules/auth/entities/session.dart';
import 'package:idotpet/modules/auth/entities/user.dart';
import 'package:idotpet/modules/auth/usecases/get_user_usecase.dart';

class SessionController extends GetxController {
  final _getUserUseCase = Get.find<GetUserUseCase>();

  late Session _session;
  Session get session => _session;
  User get user => _session.user;

  set setsession(Session value) => _session = value;

  Future<void> loadCurrentSession() async {
    final user = await _getUserUseCase();
    _session = Session(user: user);
  }
}