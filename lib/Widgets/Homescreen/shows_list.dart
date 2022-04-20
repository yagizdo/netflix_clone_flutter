import 'package:flutter/material.dart';
import 'package:netflix_clone/Widgets/Homescreen/shows_card.dart';

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
    return ListView.builder(
        itemBuilder: (context, index) =>
            ShowsCard(img_asset: posterList[index]));
  }
}
