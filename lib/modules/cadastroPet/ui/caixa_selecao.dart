import 'package:flutter/material.dart';

const List<String> list = <String>['Cachorro', 'Cavalo', 'Coelho', 'Gato', 'Jumento', 'Passáro', 'Porco', 'Rato'];

class DropdownButtonApp extends StatelessWidget {
  const DropdownButtonApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('DropdownButton Sample')),
        body: const Center(
          child: DropdownButtonEspecie(),
        ),
      ),
    );
  }
}

class DropdownButtonEspecie extends StatefulWidget {
  const DropdownButtonEspecie({super.key});

  @override
  State<DropdownButtonEspecie> createState() => _DropdownButtonEspecieState();
}

class _DropdownButtonEspecieState extends State<DropdownButtonEspecie> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      value: dropdownValue,
      icon: const Icon(Icons.arrow_downward),
      elevation: 16,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6),
        )
      ),
      style: const TextStyle(
        color: Colors.grey,
        fontSize: 20,
        ),
      onChanged: (String? value) {
        // This is called when the user selects an item.
        setState(() {
          dropdownValue = value!;
        });
      },
      items: list.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
