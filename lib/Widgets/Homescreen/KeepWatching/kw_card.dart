import 'package:flutter/material.dart';
import 'package:netflix_clone/Utils/Colors/colors.dart';

class KwCard extends StatelessWidget {
  KwCard({Key? key, required this.img_url, required this.seasonNumber, required this.episodeNumber}) : super(key: key);
  String img_url;
  int seasonNumber;
  int episodeNumber;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 165,
          width: 120,
          margin: EdgeInsets.symmetric(horizontal: 8),
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(img_url),
                fit: BoxFit.fill),
          ),
        ),
        Container(
          color: blackGrey,
          height: 30,
          width: MediaQuery.of(context).size.width / 3.4,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.info,color: grey,),
              Icon(Icons.more_vert_outlined,color: grey,),
            ],
          ),
        ),
      ],
    );
  }
}
