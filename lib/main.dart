import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:idotpet/config/app_routes.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: 'IDotPet',
      debugShowCheckedModeBanner: false,
      getPages: AppRoutes.pages,
      initialRoute: AppRoutes.loginPath(),
    )

  );
}