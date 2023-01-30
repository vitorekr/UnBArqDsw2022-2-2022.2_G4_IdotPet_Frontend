
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:idotpet/config/app_routes.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    splashProccess();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }

  void splashProccess() {
    // final splashController = Get.find<SplashController>();

    // await splashController.initHive();
    
    // final authController = Get.find<AuthController>();
    // if (await authController.isLooged()) {
    //   await authController.refreshToken().then((value) =>
    //       Get.offNamed(AppRoutes.homePath()));
    // } else {
    Get.offNamed(AppRoutes.loginPath());
    // }
  }
}
