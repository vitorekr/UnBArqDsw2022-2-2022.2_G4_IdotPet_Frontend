import 'package:get/get.dart';
import 'package:idotpet/modules/auth/ui/login_page.dart';
import 'package:idotpet/modules/home/ui/home_page.dart';

class AppRoutes {
  static const String _home = '/';
  static const String _splash = '/splash';
  static const String _login = '/login';

  static final pages = [
    GetPage(
      name: _home,
      page: () => const HomePage(),
    ),
    GetPage(
      name: _splash,
      page: () => const LoginPage(),
    ),
  ];

  static String homePath() => _home;
  static String loginPath() => _login;
  static String splashPath() => _splash;
}
