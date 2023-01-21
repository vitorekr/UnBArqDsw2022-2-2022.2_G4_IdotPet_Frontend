import 'package:flutter/material.dart';

class PetCard extends StatelessWidget {
  const PetCard({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 350,
        height: 170,
        decoration: BoxDecoration(
          color: const Color.fromARGB(185, 255, 255, 255),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Row(
          children: [
            Container(
              width: 150,
              height: 170,
              decoration: BoxDecoration(
                color: const Color.fromARGB(185, 255, 255, 255),
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
            Column(
              children: const [
                Text('Nome do Pet'),
                Text('Raça'),
                Text('Idade'),
                Text('Sexo'),
              ],
            ),
          ],
        ));
  }
}
