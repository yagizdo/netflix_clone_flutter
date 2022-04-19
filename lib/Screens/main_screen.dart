import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:netflix_clone/Utils/Colors/colors.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  // For selected tab
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    // Navbar item list
    var items = <BottomNavigationBarItem>[
      BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'lib/Utils/Icons/home_icon.svg',
            color: selectedIndex == 0 ? white : grey,
          ),
          label: 'Home'),
      BottomNavigationBarItem(
          icon: SvgPicture.asset('lib/Utils/Icons/popular_icon.svg',
              color: selectedIndex == 1 ? white : grey),
          label: 'Popular'),
      BottomNavigationBarItem(
          icon: SvgPicture.asset('lib/Utils/Icons/search_icon.svg',
              color: selectedIndex == 2 ? white : grey),
          label: 'Search'),
      BottomNavigationBarItem(
          icon: SvgPicture.asset('lib/Utils/Icons/downloads_icon.svg',
              color: selectedIndex == 3 ? white : grey),
          label: 'Downloads'),
    ];
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
