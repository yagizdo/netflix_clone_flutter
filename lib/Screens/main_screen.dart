import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:netflix_clone/Screens/downloads_screen.dart';
import 'package:netflix_clone/Screens/home_screen.dart';
import 'package:netflix_clone/Screens/popular_screen.dart';
import 'package:netflix_clone/Screens/search_screen.dart';
import 'package:netflix_clone/Utils/Colors/colors.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  // For selected tab
  int _selectedIndex = 0;
  // Page List
  static const List _pages = [
    HomeScreen(),
    PopularScreen(),
    SearchScreen(),
    DownloadsScreen()
  ];

  @override
  Widget build(BuildContext context) {
    // Navbar item list
    var items = <BottomNavigationBarItem>[
      BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'lib/Utils/Icons/home_icon.svg',
            width: 25.w,
            color: _selectedIndex == 0 ? white : grey,
          ),
          label: 'Home'),
      BottomNavigationBarItem(
          icon: _selectedIndex == 1
              ? SvgPicture.asset(
                  'lib/Utils/Icons/selected_popular_icon.svg',
                  width: 25.w,
                )
              : SvgPicture.asset(
                  'lib/Utils/Icons/unselected_popular_icon.svg',
                  width: 25.w,
                ),
          label: 'Popular'),
      BottomNavigationBarItem(
          icon: SvgPicture.asset('lib/Utils/Icons/search_icon.svg',
              width: 25.w, color: _selectedIndex == 2 ? white : grey),
          label: 'Search'),
      BottomNavigationBarItem(
          icon: SvgPicture.asset('lib/Utils/Icons/downloads_icon.svg',
              width: 25.w, color: _selectedIndex == 3 ? white : grey),
          label: 'Downloads'),
    ];
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          //Unselected fontsize
          unselectedFontSize: 12.sp,
          //Selected fontsize
          selectedFontSize: 12.sp,
          // Background color
          backgroundColor:
              Theme.of(context).bottomNavigationBarTheme.backgroundColor,
          // Items list
          items: items,
          onTap: onItemTapped,
          currentIndex: _selectedIndex,
        ),
        body: SafeArea(
          child: _pages.elementAt(_selectedIndex),
        ));
  }

  // For show current selected tab
  void onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
