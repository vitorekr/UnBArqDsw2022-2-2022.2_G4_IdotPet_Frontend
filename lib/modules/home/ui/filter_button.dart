import 'package:flutter/material.dart';

class FilterButton extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  var label = '';

  FilterButton({super.key, required this.label});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            color: Color.fromARGB(255, 255, 200, 0),
            borderRadius: BorderRadius.all(Radius.circular(10.0))),
        constraints: const BoxConstraints.tightFor(width: 75, height: 58),
        margin: const EdgeInsets.symmetric(vertical: 20.0),
        child: TextButton(
          onPressed: () {},
          child: Text(
            label,
            style: const TextStyle(
              color: Color.fromARGB(255, 149, 0, 255),
              fontSize: 14,
            ),
          ),
        ));
  }
}
