import 'package:flutter/material.dart';

import 'colors.dart';

class NetflixTheme {
  final netflixTheme = ThemeData(
    // Scaffold Color
    scaffoldBackgroundColor: black,
    // Bottom Navigation Bar Theme
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: black,
      // Navbar type
      type: BottomNavigationBarType.fixed,
      // Selected Color
      selectedItemColor: white,
      // Unselected Color
      unselectedItemColor: grey,
    ),
  );
}
