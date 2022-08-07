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
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height / 2,
          ),
          Container(
            color: Colors.amber,
            child: Text("hello world"),
          )
        ],
      ),
    );
  }
}
