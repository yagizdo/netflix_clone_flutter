import 'package:flutter/material.dart';

class ShowsCard extends StatelessWidget {
  ShowsCard({Key? key, required this.img_asset}) : super(key: key);

  String img_asset;
  @override
  Widget build(BuildContext context) {
    return Image.asset(img_asset);
  }
}
