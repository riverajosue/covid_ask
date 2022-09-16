import 'package:flutter/material.dart';
import 'package:slide_screen_flutter/widgets/body_widget.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
_HomePageState createState() => _HomePageState();

}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: const BackgroundCustom()
        );

  }

}