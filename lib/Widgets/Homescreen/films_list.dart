import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:netflix_clone/Widgets/Homescreen/film_card.dart';

import '../../Utils/Colors/colors.dart';

class ShowsList extends StatelessWidget {
  const ShowsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var posterList = [
      'lib/Utils/Img/iron_man_2_post.png',
      'lib/Utils/Img/spiderman_hc_post.jpeg',
      'lib/Utils/Img/the_prestige_post.jpg',
      'lib/Utils/Img/spiderman_nwh_post.webp',
      'lib/Utils/Img/wanted_film_post.jpg',
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Text('Films',
              style: TextStyle(
                  color: white, fontWeight: FontWeight.bold, fontSize: 15.sp)),
        ),
        SizedBox(
          height: 220,
          child: ListView.builder(
              padding: EdgeInsets.symmetric(vertical: 12),
              scrollDirection: Axis.horizontal,
              itemCount: posterList.length,
              itemBuilder: (context, index) =>
                  ShowsCard(img_asset: posterList[index])),
        ),
      ],
    );
  }
}
