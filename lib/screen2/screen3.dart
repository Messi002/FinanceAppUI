// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Screen3 extends StatefulWidget {
  const Screen3({Key? key}) : super(key: key);

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 29, 63, 238),
        appBar: AppBar(
          leading: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 30.0),
                child: Icon(
                  Icons.arrow_back_ios,
                  size: 20,
                ),
              )),
          backgroundColor: Color.fromARGB(255, 29, 63, 238),
          elevation: 0.0,
          iconTheme: const IconThemeData(color: Colors.white),
          actionsIconTheme: const IconThemeData(color: Colors.white),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 30.0),
              child: Icon(Icons.person),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.only(top: 12),
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(70), topRight: Radius.circular(70)),
            ),
            child: Column(
              children: [
                Expanded(
                    child: Container(
                  margin: const EdgeInsets.only(top: 20),
                  // alignment: Alignment.center,
                  child: Text(
                    "New Expences",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                )),
                Expanded(flex: 4, child: Text("hello")),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
