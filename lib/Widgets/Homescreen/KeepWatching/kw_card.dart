import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:netflix_clone/Utils/Colors/colors.dart';

class KwCard extends StatelessWidget {
  KwCard(
      {Key? key,
      required this.img_url,
      required this.seasonNumber,
      required this.episodeNumber})
      : super(key: key);
  String img_url;
  int seasonNumber;
  int episodeNumber;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Container(
              height: 156,
              width: 120,
              margin: const EdgeInsets.symmetric(horizontal: 8),
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(img_url), fit: BoxFit.fill),
              ),
            ),
            Positioned(
              top: 135,
              child: Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width / 1,
                height: MediaQuery.of(context).size.height / 27,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [black, Colors.transparent],
                    begin: Alignment.center,
                    end: Alignment.topCenter,
                  ),
                ),
                child: Text(
                  'S$seasonNumber:B$episodeNumber',
                  style: const TextStyle(
                      color: white, fontSize: 11, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Positioned(
                child: SvgPicture.asset('lib/Utils/Icons/keep_icon.svg')),
          ],
        ),
        Container(
          color: blackGrey,
          height: 40,
          width: MediaQuery.of(context).size.width / 3.4,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Icon(
                Icons.info,
                color: grey,
              ),
              Icon(
                Icons.more_vert_outlined,
                color: grey,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
