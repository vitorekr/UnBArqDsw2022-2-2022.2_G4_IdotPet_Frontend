import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:idotpet/auth/ui/login_page.dart';
import 'package:idotpet/home/ui/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoginPage(),
      initialRoute: '/login',
      routes: {
        '/home': (context) => const HomePage(),
        '/login': (context) => const LoginPage(),
      },
    );
  }
}
