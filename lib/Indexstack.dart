import 'package:beltei/Classroom.dart';
import 'package:beltei/Home_English.dart';
import 'package:flutter/material.dart';

class Indexstack extends StatefulWidget {
  const Indexstack({super.key});

  @override
  State<Indexstack> createState() => _IndexstackState();
}

class _IndexstackState extends State<Indexstack> {
  int _selectedIndex = 0;
  bool _isHovered = false;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: [Home_English(), Classroom()],
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).size.height *
              0.01, // Adjusts padding based on screen height
        ),
        child: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.tv),
              label: 'Classroom',
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.grid_view_outlined), label: "More"),
          ],
          currentIndex: _selectedIndex, // Set to state variable
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
