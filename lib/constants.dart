import 'package:flutter/material.dart';

const kBgDecoration = BoxDecoration(
    gradient: LinearGradient(
  colors: [
    Color.fromARGB(255, 8, 76, 132),
    Color.fromARGB(255, 15, 51, 115),
  ],
  begin: FractionalOffset(0, 0),
  end: FractionalOffset(1.0, 0.0),
  stops: [0.0, 1.0],
  tileMode: TileMode.clamp,
));
