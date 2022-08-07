// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:app/constants.dart';
import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      decoration: kBgDecoration,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.59,
            ),
            Container(
              child: Text(
                "Hey!\nWelcome to \nXpenseTracker...",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(255, 229, 223, 223),
                  wordSpacing: 3,
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 45,
            ),
            Container(
              child: Text(
                "Swap your way through.",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.white54,
                  wordSpacing: 2,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
