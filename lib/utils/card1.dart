import 'package:flutter/material.dart';

class Card1 extends StatelessWidget {
  Card1(
 

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      padding: const EdgeInsets.symmetric(horizontal: 13.0),
      decoration: BoxDecoration(
          color: Color.fromARGB(31, 141, 134, 134),
          borderRadius: BorderRadius.circular(16.0)),
      child: Row(
        children: [
          Expanded(
              flex: 1,
              child: Container(
                height: 35,
                padding: const EdgeInsets.fromLTRB(10, 5, 0, 5),
                decoration: BoxDecoration(
                    color: color, borderRadius: BorderRadius.circular(10)),
                child: Row(children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        '....',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 4,
                      ),
                      Text(
                        text1,
                        style:
                            const TextStyle(color: Colors.white, fontSize: 10),
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
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    Text(text3,
                        style:
                            TextStyle(fontSize: 12, color: Colors.grey[600])),
                  ],
                ),
              )),
          const Expanded(
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
