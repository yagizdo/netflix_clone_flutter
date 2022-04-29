import 'package:flutter/material.dart';
import 'package:netflix_clone/Widgets/Homescreen/homescreen_appbar.dart';
import 'package:netflix_clone/Widgets/Homescreen/homescreen_thumbnail.dart';
import 'package:netflix_clone/Widgets/Homescreen/content_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var filmPosterList = [
      'lib/Utils/Img/films/iron_man_2_post.png',
      'lib/Utils/Img/films/spiderman_hc_post.jpeg',
      'lib/Utils/Img/films/the_prestige_post.jpg',
      'lib/Utils/Img/films/spiderman_nwh_post.webp',
      'lib/Utils/Img/films/wanted_film_post.jpg',
    ];

    var cartoonsPosterList = [
      'lib/Utils/Img/cartoons/spongebob.jpeg',
      'lib/Utils/Img/cartoons/family_guy.jpg',
      'lib/Utils/Img/cartoons/pinky_malinky.jpg',
      'lib/Utils/Img/cartoons/bojack_horseman.webp',
      'lib/Utils/Img/cartoons/big_mouth.jpeg',
    ];

    var keepWatchingPosterList = [
      'lib/Utils/Img/cartoons/spongebob.jpeg',
      'lib/Utils/Img/shows/the_office.jpg',
      'lib/Utils/Img/shows/b_nine_nine.jpg',
      'lib/Utils/Img/cartoons/big_mouth.jpeg',
      'lib/Utils/Img/cartoons/family_guy.jpg',
    ];
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Column(
          children: [
            HomescreenAB(),
            HomeScreenThumbnail(),

            // Keep Watching
            ContentList(title: 'Yilmaz Yagiz, Keep Watching', posterList: keepWatchingPosterList, isKeepWatching: true,),

            // Films
            ContentList(title: 'Films', posterList: filmPosterList),

            // Cartoons
            ContentList(title: 'Cartoons', posterList: cartoonsPosterList),
          ],
        ),
      ),
    );
  }
}
