import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShowsCard extends StatelessWidget {
  ShowsCard({Key? key, required this.img_asset}) : super(key: key);

  String img_asset;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 120,
      margin: EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(img_asset), fit: BoxFit.cover),
      ),
    );
  }
}
