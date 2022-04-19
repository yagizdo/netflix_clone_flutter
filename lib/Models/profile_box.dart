import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Utils/Colors/colors.dart';

class ProfileBox extends StatelessWidget {
  ProfileBox({Key? key, required this.img_asset, required this.name})
      : super(key: key);

  String img_asset;
  String name;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(
            img_asset,
            width: 93.w,
          ),
        ),
        SizedBox(
          height: 5.h,
        ),
        Text(name, style: TextStyle(color: white, fontWeight: FontWeight.bold)),
      ],
    );
  }
}
