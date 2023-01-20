import 'package:get/get.dart';
import 'package:idotpet/modules/auth/ui/login_page.dart';
import 'package:idotpet/modules/auth/ui/signup_page.dart';
import 'package:idotpet/modules/home/ui/home_page.dart';

class AppRoutes {
  static const String _home = '/';
  static const String _splash = '/splash';
  static const String _login = '/login';
  static const String _signup = '/signup';


  static final pages = [
    GetPage(
      name: _home,
      page: () => const HomePage(),
    ),
    GetPage(
      name: _login,
      page: () => const LoginPage(),
    ),
    GetPage(
      name: _signup,
      page: () => const SignUpPage(),
    ),
    
  ];

  static String homePath() => '/';
  static String loginPath() => _login;
  static String signupPath() => _signup;
  static String splashPath() => _splash;
}