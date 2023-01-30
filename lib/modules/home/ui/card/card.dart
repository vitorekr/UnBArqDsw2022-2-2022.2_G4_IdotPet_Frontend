import 'package:flutter/material.dart';

Color rosa = const Color.fromARGB(255, 233, 0, 84);

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
            SizedBox(
              width: 160,
              height: 180,
              child: Image.asset(
                'assets/images/jorge.png',
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 18),
            Column(
              children: const [
                SizedBox(height: 16),
                Text('Jorge',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 23,
                        color: Color.fromARGB(255, 149, 0, 255))),
                SizedBox(height: 18),
                Text(
                  'Porte',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Color.fromARGB(255, 233, 0, 84)),
                ),
                Text(
                  'Médio',
                  style: TextStyle(
                      fontSize: 16, color: Color.fromARGB(255, 255, 255, 255)),
                ),
                SizedBox(height: 18),
                Text(
                  'Idade',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Color.fromARGB(255, 233, 0, 84)),
                ),
                Text(
                  '3 Anos',
                  style: TextStyle(
                      fontSize: 16, color: Color.fromARGB(255, 255, 255, 255)),
                ),
              ],
            ),
            const SizedBox(width: 24),
            Column(
              children: const [
                SizedBox(height: 22),
                Text('Macho',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Color.fromARGB(255, 233, 0, 84))),
                SizedBox(height: 18),
                Text(
                  'Origem',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Color.fromARGB(255, 233, 0, 84)),
                ),
                Text(
                  'Asa Norte',
                  style: TextStyle(
                      fontSize: 16, color: Color.fromARGB(255, 255, 255, 255)),
                ),
                SizedBox(height: 18),
                Text(
                  'Peso',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Color.fromARGB(255, 233, 0, 84)),
                ),
                Text(
                  '12',
                  style: TextStyle(
                      fontSize: 16, color: Color.fromARGB(255, 255, 255, 255)),
                ),
              ],
            )
          ],
        ));
  }
}