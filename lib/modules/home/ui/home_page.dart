// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';
import 'package:idotpet/modules/home/ui/card.dart';

import 'navbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromRGBO(233, 0, 84, 1),
      body: Center(
        child: PetCard(),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
