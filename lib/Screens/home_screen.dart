import 'package:flutter/material.dart';
import 'package:netflix_clone/Widgets/Homescreen/homescreen_appbar.dart';
import 'package:netflix_clone/Widgets/Homescreen/homescreen_thumbnail.dart';
import 'package:netflix_clone/Widgets/Homescreen/content_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var filmPosterList = [
      'lib/Utils/Img/iron_man_2_post.png',
      'lib/Utils/Img/spiderman_hc_post.jpeg',
      'lib/Utils/Img/the_prestige_post.jpg',
      'lib/Utils/Img/spiderman_nwh_post.webp',
      'lib/Utils/Img/wanted_film_post.jpg',
    ];

    var showsPosterList = [
      'lib/Utils/Img/spongebob.jpeg',
      'lib/Utils/Img/family_guy.jpg',
      'lib/Utils/Img/pinky_malinky.jpg',
      'lib/Utils/Img/bojack_horseman.webp',
      'lib/Utils/Img/teen_titans.jpg',
    ];
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Column(
          children: [
            HomescreenAB(),
            HomeScreenThumbnail(),

            // Keep Watching
            ContentList(title: 'Yilmaz Yagiz, Keep Watching', posterList: showsPosterList, isKeepWatching: true,),

            // Films
            ContentList(title: 'Films', posterList: filmPosterList),

            // Cartoons
            ContentList(title: 'Cartoons', posterList: showsPosterList),
          ],
        ),
      ),
    );
  }
}
