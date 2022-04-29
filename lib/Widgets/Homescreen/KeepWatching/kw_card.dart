import 'package:flutter/material.dart';

class KwCard extends StatelessWidget {
  const KwCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 120,
      margin: EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage('lib/Utils/Img/pinky_malinky.jpg'), fit: BoxFit.cover),
      ),
    );
  }
}
