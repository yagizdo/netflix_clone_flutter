import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:netflix_clone/Widgets/Homescreen/content_card.dart';

import '../../Utils/Colors/colors.dart';

class ContentList extends StatelessWidget {
  ContentList({Key? key,required this.title,required this.posterList}) : super(key: key);
  String title;
  var posterList;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Text(title,
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
