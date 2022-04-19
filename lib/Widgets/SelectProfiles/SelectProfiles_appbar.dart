import 'package:flutter/material.dart';

import '../../Utils/Colors/colors.dart';

class SelectProfilesAB extends StatelessWidget implements PreferredSizeWidget {
  const SelectProfilesAB({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(100);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text('Who\'s Watching?',
          style: TextStyle(color: white, fontWeight: FontWeight.w300)),
      actions: [
        TextButton(
          onPressed: () {},
          child: const Text(
            'Edit',
            style: TextStyle(color: white, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
