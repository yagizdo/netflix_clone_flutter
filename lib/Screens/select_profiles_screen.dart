import 'package:flutter/material.dart';
import 'package:netflix_clone/Utils/Colors/colors.dart';

class SelectProfiles extends StatelessWidget {
  const SelectProfiles({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select Profile'),
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text(
              'Edit',
              style: TextStyle(color: white, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
