import 'package:flutter/material.dart';
import 'package:netflix_clone/Widgets/Homescreen/homescreen_appbar.dart';
import 'package:netflix_clone/Widgets/Homescreen/homescreen_thumbnail.dart';
import 'package:netflix_clone/Widgets/Homescreen/content_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Column(
          children: [HomescreenAB(), HomeScreenThumbnail(), ShowsList()],
        ),
      ),
    );
  }
}
