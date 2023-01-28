import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:idotpet/config/app_routes.dart';
import 'package:idotpet/modules/auth/controllers/user_controller.dart';
import 'package:idotpet/modules/auth/data_provider/user_api.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    // final userController = Get.find<UserController>;
    final userApi = UserApi();
    return Scaffold(
      appBar: AppBar(title: const Text("Login Page")),
      body: TextButton(
          onPressed: () async {
            /* await userApi.userLogin();
          await userApi.getUser(); */
            Get.offNamed(AppRoutes.homePath());
          },
          child: const Text('requisição')),
    );
  }
}
