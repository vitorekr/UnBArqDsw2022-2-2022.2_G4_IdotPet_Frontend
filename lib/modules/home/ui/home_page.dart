// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:idotpet/config/app_routes.dart';
import 'package:idotpet/modules/home/ui/card.dart';
import 'package:idotpet/modules/home/ui/card/card2.dart';
import 'package:idotpet/modules/home/ui/card/card3.dart';
import 'package:idotpet/modules/home/ui/card/card4.dart';
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
      body: SingleChildScrollView(
        child: Column(
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
              child: 
              // ignore: prefer_const_literals_to_create_immutables
              Row(children: [
                const Text(
                  "Procurar Pet",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(width: 150,),
      
                Container(
                    height: 80,
                    width: 80,
                    // ignore: prefer_const_constructors
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255,255,139,106),
                        borderRadius: const BorderRadius.all(
                        Radius.circular(30)
                    )
                    
                  ),
      
                  child: SizedBox.expand(
                    child: TextButton(
                        child: 
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            // ignore: prefer_const_literals_to_create_immutables
                            children: <Widget>[
                              const Text('+',
                                style: TextStyle(color: Colors.white,
                                fontSize: 40,
                                ),
                              ),
                            ]),
                        onPressed: () {
                          Get.offNamed(AppRoutes.cadastroPath());
                        },
                  ),
                ),
                )
              ],)
              
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
              child: PetCard2(),
            ),
            const SizedBox(height: 22),
            const Center(
              child: PetCard3(),
            ),
            const SizedBox(height: 22),
            const Center(
              child: PetCard4(),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
