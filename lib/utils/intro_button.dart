// ignore_for_file: prefer_const_constructors

import "package:flutter/material.dart";

class MyButton extends StatelessWidget {
  MyButton({super.key, required this.text, this.color, this.textColor,required this.isExtended});

  final String text;
  Color? color;
  Color? textColor;
  bool isExtended;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      margin: isExtended?EdgeInsets.symmetric(horizontal: 25):null,
      // padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(9.0)),
      child: Center(
          child: Text(
        text,
        style: TextStyle(fontWeight: FontWeight.w500, color: textColor),
      )),
    );
  }
}
