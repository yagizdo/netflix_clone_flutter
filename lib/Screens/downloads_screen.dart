import 'package:flutter/material.dart';

import '../Utils/Colors/colors.dart';

class DownloadsScreen extends StatelessWidget {
  const DownloadsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Center(
          child: Text(
            'Downloads Screen',
            style: TextStyle(color: white),
          ),
        ),
      ),
    );
  }
}
