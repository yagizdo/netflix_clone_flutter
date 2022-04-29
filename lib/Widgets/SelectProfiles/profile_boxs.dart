import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:netflix_clone/Models/profile_box.dart';

class ProfileBoxs extends StatelessWidget {
  const ProfileBoxs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ProfileBox(
                img_asset: 'lib/Utils/Img/profile/andrew_img.png', name: 'Yilmaz'),
            SizedBox(
              width: 20.w,
            ),
            ProfileBox(img_asset: 'lib/Utils/Img/profile/melvin_img.png', name: 'Oguz'),
          ],
        ),
        SizedBox(
          height: 50.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ProfileBox(img_asset: 'lib/Utils/Img/profile/hero_img.png', name: 'Selim'),
            SizedBox(
              width: 20.w,
            ),
            ProfileBox(img_asset: 'lib/Utils/Img/profile/diane_img.png', name: 'Ecem'),
          ],
        ),
        SizedBox(
          height: 40.h,
        ),
        ProfileBox(img_asset: 'lib/Utils/Img/profile/connie_img.png', name: 'Pinar'),
      ],
    );
  }
}
