import 'package:flutter/material.dart';
import 'package:netflix_clone/Screens/splash_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Netflix Clone',
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
