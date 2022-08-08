import 'package:flutter/material.dart';

const kBgDecoration = BoxDecoration(
    gradient: LinearGradient(
  colors: [
    Color.fromARGB(255, 29, 63, 238),
    Color.fromARGB(255, 15, 63, 230),
  ],
  begin: FractionalOffset(0, 0),
  end: FractionalOffset(1.0, 0.0),
  stops: [0.0, 1.0],
  tileMode: TileMode.clamp,
));

const kTextStyle = TextStyle(fontWeight: FontWeight.bold, fontSize: 19);
