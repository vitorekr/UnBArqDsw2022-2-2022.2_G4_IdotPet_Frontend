import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:idotpet/config/app_routes.dart';
import 'package:idotpet/modules/auth/data_provider/user_api.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final userApi = UserApi();
    return Scaffold(
      appBar: AppBar(title: const Text("Login Page")),
      body: TextButton(
        onPressed: () async {
          Get.offNamed(AppRoutes.signupPath());
        }, 
        child: const Text('requisição')
      ),
    );
  }

}