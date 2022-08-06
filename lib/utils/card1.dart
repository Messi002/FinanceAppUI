import 'package:flutter/material.dart';

class Card1 extends StatelessWidget {
  Card1(
      {super.key,
      required this.text1,
      required this.text2,
      required this.text3,
      required this.color});

 final String text1;
 final  String text2;
 final String text3;
 final  Color color;

  @override
  Widget build(BuildContext context) {
    return   Container(
                    height: 70,
                    padding: const EdgeInsets.symmetric(horizontal: 13.0),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 208, 202, 202),
                        borderRadius: BorderRadius.circular(16.0)),
                    child: Row(
                      children: [
                        Expanded(
                            flex: 1,
                            child: Container(
                              height: 35,
                              padding: EdgeInsets.fromLTRB(10, 5, 0, 5),
                              decoration: BoxDecoration(
                                  color: color,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Row(children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '....',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Text(
                                      text1,
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 10),
                                    )
                                  ],
                                )
                              ]),
                            )),
                        Expanded(
                            flex: 3,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 16.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    text2,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                  SizedBox(
                                    height: 2,
                                  ),
                                  Text(text3,
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.grey[600])),
                                ],
                              ),
                            )),
                        Expanded(
                          child: Icon(
                            Icons.arrow_forward_ios,
                            size: 18,
                          ),
                        ),
                      ],
                    ),
                  );
  }
}
