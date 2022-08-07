// ignore_for_file: prefer_const_constructors

import 'package:app/constants.dart';
import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

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
              height: MediaQuery.of(context).size.height / 1.8,
            ),
            Container(
              child: Text(
                "Your MONEY,\nour \nPRIORITY...",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(255, 229, 223, 223),
                  wordSpacing: 2,
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 70,
            ),
            Container(
              child: Text(
                "Security and Satisfaction,\nWE bring to YOU.",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Colors.white54,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
