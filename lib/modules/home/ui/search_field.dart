import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  const SearchField({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(25.0))),
        constraints: const BoxConstraints.tightFor(width: 300, height: 50),
        margin: const EdgeInsets.symmetric(vertical: 20.0),
        child: const TextField(
          decoration: InputDecoration(
            hintText: "Pesquisar",
            prefixIcon: Icon(Icons.search),
            border: InputBorder.none,
          ),
        ));
  }
}
