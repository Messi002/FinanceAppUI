import 'package:app/screens/screen1.dart';
import 'package:app/screens/screen2.dart';
import 'package:flutter/material.dart';

v
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
      ),
      home:const Screen1(),
    );
  }
}
