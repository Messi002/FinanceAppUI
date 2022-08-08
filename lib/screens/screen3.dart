// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:app/constants.dart';
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
                    flex: 0,
                    child: Container(
                      margin: const EdgeInsets.only(top: 20),
                      // alignment: Alignment.center,
                      child: Text(
                        "New Expences",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                    )),
                Expanded(
                    flex: 1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                            text: TextSpan(children: <TextSpan>[
                          TextSpan(
                            text: "\$  ",
                            style: TextStyle(
                                color: Colors.grey[400], fontSize: 40),
                          ),
                          TextSpan(
                            text: "2,090.20",
                            style: TextStyle(color: Colors.black, fontSize: 40),
                          ),
                        ])),
                        SizedBox(
                          height: 7,
                        ),
                        Divider(
                          color: Colors.grey[300],
                          height: 8,
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Text(
                          "Type here",
                          style:
                              TextStyle(color: Colors.grey[300], fontSize: 11),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                      ],
                    )),
                Expanded(
                    flex: 0,
                    child: Card3(
                        text1: "Choose category",
                        icon: Icons.all_inbox_outlined)),
                SizedBox(
                  height: 13,
                ),
                Expanded(
                    flex: 0,
                    child: MyButton(
                      text: "Continue",
                      color: Colors.black,
                      textColor: Colors.white,
                      isExtended: false,
                    )),
                SizedBox(
                  height: 30,
                ),
                NumDisplay("1", "2", "3"),
                SizedBox(
                  height: 16,
                ),
                NumDisplay("4", "5", "6"),
                SizedBox(
                  height: 16,
                ),
                NumDisplay("7", "8", "9"),
                SizedBox(
                  height: 16,
                ),
                NumDisplay(".", "0", "x"),
                SizedBox(
                  height: 24,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  }
}
