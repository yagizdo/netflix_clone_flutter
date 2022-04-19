import 'package:flutter/material.dart';
import 'package:netflix_clone/Utils/Colors/colors.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: black,
      body: Center(
        child: Text(
          'Netflix Clone',
          style: TextStyle(color: white),
        ),
      ),
    );
  }
}
