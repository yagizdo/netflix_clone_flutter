import 'package:flutter/material.dart';
import 'package:netflix_clone/Utils/Colors/colors.dart';

class PopularScreen extends StatelessWidget {
  const PopularScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Center(
          child: Text(
            'Popular Screen',
            style: TextStyle(color: white),
          ),
        ),
      ),
    );
  }
}
