// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:app/IntroPages/page1.dart';
import 'package:app/IntroPages/page2.dart';
import 'package:app/IntroPages/page3.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Screen1 extends StatefulWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Stack(
      children: [
        PageView(
          controller: _controller,
          children: [
            Page1(),
            Page2(),
            Page3(),
          ],
        ),
        Container(
          alignment: Alignment(-0.7, 0.75),
          child: SmoothPageIndicator(
            controller: _controller,
            count: 3,
            effect: JumpingDotEffect(
              activeDotColor: Colors.white,
              dotColor: Color.fromARGB(255, 189, 183, 183),
              verticalOffset: 20,
              spacing: 20,
              dotHeight: 9,
              dotWidth: 9,
            ),
          ),
        ),
      ],
    )));
  }
}
