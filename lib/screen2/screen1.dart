// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:app/IntroPages/page1.dart';
import 'package:app/IntroPages/page2.dart';
import 'package:app/IntroPages/page3.dart';
import 'package:app/screen2/screen2.dart';
import 'package:app/utils/intro_button.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Screen1 extends StatefulWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  PageController _controller = PageController();

  bool onLastPage = false;
  bool isVisible = true;
  bool onPage2 = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Stack(
      children: [
        PageView(
          onPageChanged: (index) {
            setState(() {
              onLastPage = (index == 2);
              isVisible = !(index == 2);
              onPage2 = (index == 1);
            });
          },
          controller: _controller,
          children: [
            Page1(),
            Page2(),
            Page3(),
          ],
        ),
        Container(
          alignment: Alignment(-0.8, 0.73),
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
        Container(
          alignment: Alignment(-0.8, 0.85),
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              onPage2?
              Visibility(
                visible: onPage2,
                child: GestureDetector(
                  onTap: () {
                    _controller.previousPage(duration: Duration(milliseconds: 500), curve: Curves.bounceInOut);
                  },
                  child: Text(
                    "Prev",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ):Visibility(
                visible: isVisible,
                child: GestureDetector(
                  onTap: () {
                    _controller.jumpToPage(2);
                  },
                  child: Text(
                    "Skip",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),




              Visibility(
                visible: isVisible,
                child: GestureDetector(
                  onTap: () {
                    _controller.nextPage(
                        duration: Duration(milliseconds: 500),
                        curve: Curves.bounceInOut);
                  },
                  child: Text(
                    "Next",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
        Visibility(
          visible: onLastPage,
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Screen2(),
                ),
              );
            },
            child: Container(
              alignment: Alignment(-0.8, 0.9),
              child: MyButton(),
            ),
          ),
        ),
      ],
    )));
  }
}
