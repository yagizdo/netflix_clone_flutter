import 'package:flutter/material.dart';

import '../Utils/Colors/colors.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Center(
          child: Text(
            'Search Screen',
            style: TextStyle(color: white),
          ),
        ),
      ),
    );
  }
}
