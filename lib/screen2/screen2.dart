// ignore_for_file: prefer_const_constructors

import 'package:app/utils/card1.dart';
import 'package:app/utils/main_board_container.dart';
import 'package:flutter/material.dart';

class Screen2 extends StatefulWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      drawer: const Drawer(),
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
        elevation: 0.0,
        iconTheme: const IconThemeData(color: Colors.black),
        actionsIconTheme: const IconThemeData(color: Colors.black),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: Icon(Icons.person),
          )
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Current balance',
                      style: TextStyle(fontSize: 15),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      '\$ 2,090.20',
                      style: const TextStyle(
                          fontWeight: FontWeight.w600, fontSize: 35),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    const MyCard(),
                    const SizedBox(
                      height: 30,
                    ),
                    const Text('Your cards'),
                    SizedBox(
                      height: 10,
                    ),
                    Card1(
                        text1: "3490",
                        text2: "\$1,020.92",
                        text3: "Visa",
                        color: Colors.black),
                    SizedBox(
                      height: 8,
                    ),
                    Card1(
                        text1: "2820",
                        text2: "\$1,890.30",
                        text3: "Master Card",
                        color: Color.fromARGB(255, 39, 27, 166)),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Text("Expences"),
                        Container(
                          padding: const EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            border: Border.all(color: Colors.black),
                          ),
                          child: Text(
                            "View All",
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
