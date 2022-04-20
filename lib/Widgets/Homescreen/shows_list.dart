import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:netflix_clone/Widgets/Homescreen/shows_card.dart';

import '../../Utils/Colors/colors.dart';

class ShowsList extends StatelessWidget {
  const ShowsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var posterList = [
      'lib/Utils/Img/spiderman_hc.png',
      'lib/Utils/Img/spiderman_nwh.png',
      'lib/Utils/Img/dont_look_up.png',
      'lib/Utils/Img/the_amazing_spiderman.png',
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
