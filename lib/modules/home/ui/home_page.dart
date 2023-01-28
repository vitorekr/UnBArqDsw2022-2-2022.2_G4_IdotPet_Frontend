// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';
import 'package:idotpet/modules/home/ui/card.dart';
import 'package:idotpet/modules/home/ui/filter_button.dart';
import 'package:idotpet/modules/home/ui/search_field.dart';

import 'navbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(233, 0, 84, 1),
      body: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.only(top: 75, left: 20),
            child: const Text(
              "Explorar",
              style: TextStyle(
                fontSize: 25,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.only(top: 16, left: 20),
            child: const Text(
              "Procurar Pet",
              style: TextStyle(
                fontSize: 25,
                color: Colors.white,
              ),
            ),
          ),
          const Center(
            child: SearchField(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FilterButton(label: 'Cães'),
              const SizedBox(width: 10),
              FilterButton(label: 'Gatos'),
              const SizedBox(width: 10),
              FilterButton(label: 'Pássaros'),
              const SizedBox(width: 10),
              FilterButton(label: 'Outros'),
            ],
          ),
          const Center(
            child: PetCard(),
          ),
          const SizedBox(height: 22),
          const Center(
            child: PetCard(),
          ),
        ],
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
