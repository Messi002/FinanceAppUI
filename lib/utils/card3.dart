import 'package:flutter/material.dart';

class Card3 extends StatelessWidget {
  Card3({
    super.key,
    required this.text1,
    required this.icon,
  });

  final String text1;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      padding: const EdgeInsets.symmetric(horizontal: 13.0),
      decoration: BoxDecoration(
          color: Color.fromARGB(31, 141, 134, 134),
          borderRadius: BorderRadius.circular(9.0)),
      child: Row(
        children: [
          Expanded(
              flex: 1,
              child: Container(
                height: 35,
                padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10)),
                child: Icon(icon),
              )),
          Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.only(left: 2.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      text1,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    const SizedBox(
                      height: 2,
                    ),
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
