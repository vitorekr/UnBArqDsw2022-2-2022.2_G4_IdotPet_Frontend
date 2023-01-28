import 'package:flutter/material.dart';

Color rosa = const Color.fromARGB(255, 233, 0, 84);

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _selectedIndex,
      onTap: _onItemTapped,
      type: BottomNavigationBarType.fixed,
      backgroundColor: Color.fromARGB((0.71 * 255).toInt(), 255, 255, 255),
      selectedIconTheme: const IconThemeData(color: Color(0xFFDF0056)),
      selectedItemColor: const Color.fromARGB(255, 233, 0, 84),
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.chat),
          label: "Chat",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notifications),
          label: "Notificação",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: "Perfil",
        ),
      ],
    );
  }
}
