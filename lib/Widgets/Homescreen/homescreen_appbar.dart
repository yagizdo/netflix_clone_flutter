import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomescreenAB extends StatelessWidget implements PreferredSizeWidget {
  const HomescreenAB({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(100);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: Image.asset('lib/Utils/Img/netflix_logo.png'),
      actions: [
        SvgPicture.asset('lib/Utils/Icons/tv_icon.svg'),
        SizedBox(
          width: 10.w,
        ),
        Image.asset(
          'lib/Utils/Img/profile/andrew_img.png',
          width: 22.sp,
          height: 22.sp,
        ),
      ],
    );
  }
}
