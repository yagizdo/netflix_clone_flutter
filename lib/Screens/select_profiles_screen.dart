import 'package:flutter/material.dart';
import 'package:netflix_clone/Widgets/SelectProfiles/SelectProfiles_appbar.dart';

import '../Widgets/SelectProfiles/profile_boxs.dart';

class SelectProfiles extends StatelessWidget {
  const SelectProfiles({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SelectProfilesAB(),
      body: Column(
        children: [
          ProfileBoxs(),
        ],
      ),
    );
  }
}
