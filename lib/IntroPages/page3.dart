// ignore_for_file: prefer_const_constructors

import 'package:app/constants.dart';
import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

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
                "Best Way To \nTracking Your \nMoney...",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(255, 229, 223, 223),
                  wordSpacing: 3,
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 70,
            ),
            Container(
              child: Text(
                "Control and track what you spend \nyour money on",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey[500],
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
