import 'package:flutter/material.dart';

const List<String> list = <String>['Macho', 'Fêmea'];

class DropdownButtonApp extends StatelessWidget {
  const DropdownButtonApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('DropdownButton Sample')),
        body: const Center(
          child: DropdownButtonGenero(),
        ),
      ),
    );
  }
}

class DropdownButtonGenero extends StatefulWidget {
  const DropdownButtonGenero({super.key});

  @override
  State<DropdownButtonGenero> createState() => _DropdownButtonGeneroState();
}

class _DropdownButtonGeneroState extends State<DropdownButtonGenero> {
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
