import 'package:flutter/material.dart';
import 'package:slide_screen_flutter/view/home_page.dart';
import 'package:slide_screen_flutter/view/intro_slide.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: IntroSlidePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

