import 'package:flutter/material.dart';
import 'package:netflix_clone/Widgets/Homescreen/homescreen_thumbnail.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          HomeScreenThumbnail(),
        ],
      ),
    );
  }
}
