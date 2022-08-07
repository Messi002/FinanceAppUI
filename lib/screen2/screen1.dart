import 'package:app/IntroPages/page1.dart';
import 'package:app/IntroPages/page2.dart';
import 'package:app/IntroPages/page3.dart';
import 'package:flutter/material.dart';

class Screen1 extends StatefulWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: PageView(
        children: [
          Page1(),
          Page2(),
          Page3(),
        ],
      )
    ));
  }
}
