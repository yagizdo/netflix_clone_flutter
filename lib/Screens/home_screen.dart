import 'package:flutter/material.dart';

import '../Utils/Colors/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Center(
          child: Text(
            'Home Screen',
            style: TextStyle(color: white),
          ),
        ),
      ),
    );
  }
}
