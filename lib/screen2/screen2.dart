// ignore_for_file: prefer_const_constructors

import 'package:app/screen2/screen3.dart';
import 'package:app/utils/card1.dart';
import 'package:app/utils/card2.dart';
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
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 252, 250, 250),
        drawer: Drawer(
          backgroundColor: Colors.grey[200],
        ),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 252, 250, 250),
          elevation: 0.0,
          iconTheme: const IconThemeData(color: Colors.black),
          actionsIconTheme: const IconThemeData(color: Colors.black),
          actions: [
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Screen3()));
              },
              child: Padding(
                padding: EdgeInsets.only(right: 16.0),
                child: Icon(Icons.person),
              ),
            )
          ],
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            physics: AlwaysScrollableScrollPhysics(),
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
                          color: Color.fromARGB(255, 29, 63, 238)),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Expences",
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                          Container(
                            padding: const EdgeInsets.all(6),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6.0),
                              border: Border.all(color: Colors.grey),
                            ),
                            child: Text(
                              "View All",
                              style: TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                      Card2(
                          text1: "Grocery",
                          text2: "10 min ago",
                          text3: "- \$35",
                          icon: Icons.local_grocery_store_outlined),
                      Card2(
                          text1: "Shopping",
                          text2: "14 min ago",
                          text3: "- \$12",
                          icon: Icons.shopping_bag_outlined),
                      Card2(
                          text1: "Transport",
                          text2: "2 hours ago",
                          text3: "- \$43",
                          icon: Icons.toys_outlined),
                      Card2(
                          text1: "Bills",
                          text2: "3 hours ago",
                          text3: "- \$96",
                          icon: Icons.event_note_outlined),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}


//all_inbox_outlined
//bookmark outline rounded
//event note outlined
//home rounded
//shopping bag outlined
//short text outlined
//toys outlined