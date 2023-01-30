import 'package:get/get.dart';
import 'package:idotpet/config/app_bindings.dart';
import 'package:idotpet/modules/auth/ui/login_page.dart';
import 'package:idotpet/modules/auth/ui/signup_page.dart';
import 'package:idotpet/modules/home/ui/home_page.dart';
import 'package:idotpet/modules/cadastroPet/ui/cadastrar_pet.dart';
import 'package:idotpet/modules/splash/ui/splash_page.dart';

class AppRoutes {
  static const String _home = '/';
  static const String _splash = '/splash';
  static const String _login = '/login';
  static const String _signup = '/signup';
  static const String _cadastro_pet = '/cadastrar_pet';

  static final pages = [
    GetPage(
      name: _home,
      page: () => const HomePage(),
      binding: AppBindings()
    ),
    GetPage(
      name: _login,
      page: () => const LoginPage(),
      binding: AppBindings()
    ),
    GetPage(
      name: _splash,
      page: () => const SplashPage(),
      binding: AppBindings()
    ),
    GetPage(
      name: _signup,
      page: () => const SignUpPage(),
      binding: AppBindings()
    ),
    GetPage(
      name: _cadastro_pet,
      page: () => const CadastrarPet(),
      binding: AppBindings()
    ),
  ];

  static String homePath() => _home;
  static String loginPath() => _login;
  static String signupPath() => _signup;
  static String splashPath() => _splash;
  static String cadastroPath() => _cadastro_pet;

}
