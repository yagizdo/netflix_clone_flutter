import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:netflix_clone/Utils/Colors/colors.dart';

class HomeScreenThumbnail extends StatelessWidget {
  const HomeScreenThumbnail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'lib/Utils/Img/friends_poster.jpeg',
          width: 375.sp,
          height: 500.h,
          fit: BoxFit.fill,
        ),
        Container(
          height: 501.h,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [black, Colors.transparent],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            ),
          ),
        ),
        Positioned(
          top: 400.h,
          left: 25.w,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Sitcoms ',
                      style: TextStyle(
                          color: white,
                          fontWeight: FontWeight.bold,
                          fontSize: 15.sp),
                    ),
                    Icon(
                      Icons.circle,
                      size: 7.sp,
                      color: white,
                    ),
                    Text(
                      ' Comedy Programmes',
                      style: TextStyle(
                          color: white,
                          fontWeight: FontWeight.bold,
                          fontSize: 15.sp),
                    ),
                    Icon(
                      Icons.circle,
                      size: 7.sp,
                      color: white,
                    ),
                    Text(
                      ' Quirky',
                      style: TextStyle(
                          color: white,
                          fontWeight: FontWeight.bold,
                          fontSize: 15.sp),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                children: [
                  IconBtn(Icons.add, 'My List'),
                  SizedBox(width: 50.w),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: white),
                    onPressed: () {},
                    child: Row(
                      children: [
                        const Icon(
                          Icons.play_arrow,
                          color: black,
                        ),
                        Text(
                          'Play',
                          style: TextStyle(
                              color: black,
                              fontWeight: FontWeight.bold,
                              fontSize: 15.sp),
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: 50.w),
                  IconBtn(Icons.info, 'Info')
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}

Widget IconBtn(IconData icon, String label) {
  return Column(
    children: [
      Icon(
        icon,
        color: white,
      ),
      Text(
        label,
        style: TextStyle(
            color: white, fontWeight: FontWeight.bold, fontSize: 15.sp),
      ),
    ],
  );
}
