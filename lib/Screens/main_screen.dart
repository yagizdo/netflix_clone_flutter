import 'package:flutter/material.dart';
import 'package:netflix_clone/Utils/Colors/colors.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  // Navbar item list
  var items = <BottomNavigationBarItem>[
    BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
    BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
    BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
    BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
  ];
  // For selected tab
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,
      bottomNavigationBar: BottomNavigationBar(
        // Navbar type
        type: BottomNavigationBarType.fixed,
        // Background color
        backgroundColor: black,
        // Items list
        items: items,
        // Selected Color
        selectedItemColor: white,
        // Unselected Color
        unselectedItemColor: grey,
        onTap: onItemTapped,
        currentIndex: selectedIndex,
      ),
      body: Center(
        child: Text(
          'Netflix Clone',
          style: TextStyle(color: white),
        ),
      ),
    );
  }

  // For show current selected tab
  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}
