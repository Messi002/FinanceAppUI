// ignore_for_file: prefer_const_constructors

import 'package:app/utils/card3.dart';
import 'package:app/utils/intro_button.dart';
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
        body: Container(
          margin: const EdgeInsets.only(top: 12),
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 252, 250, 250),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(70), topRight: Radius.circular(70)),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
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
                Expanded(child: Text("hello")),
                Expanded(
                    flex: 0,
                    child: Card3(
                        text1: "Choose category",
                        icon: Icons.all_inbox_outlined)),
                Expanded(
                    flex: 0,
                    child: MyButton(
                      text: "Continue",
                      color: Colors.black,
                      textColor: Colors.white,
                      isExtended: false,
                    )),
                Expanded(
                    child: Card3(
                        text1: "Choose category",
                        icon: Icons.all_inbox_outlined)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
