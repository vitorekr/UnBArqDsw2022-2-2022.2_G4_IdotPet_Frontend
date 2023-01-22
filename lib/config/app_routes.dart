import 'package:get/get.dart';
import 'package:idotpet/config/app_bindings.dart';
import 'package:idotpet/modules/auth/ui/login_page.dart';
import 'package:idotpet/modules/home/ui/home_page.dart';
import 'package:idotpet/modules/splash/ui/splash_page.dart';

class AppRoutes {
  static const String _home = '/';
  static const String _splash = '/splash';
  static const String _login = '/login';

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
    
  ];

  static String homePath() => '/';
  static String loginPath() => _login;
  static String splashPath() => _splash;
}