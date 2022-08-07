import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      padding: const EdgeInsets.fromLTRB(16, 16, 60, 16),
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 29, 63, 238),
          borderRadius: BorderRadius.circular(16.0)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //column 1
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text('Income',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w100)),
              SizedBox(
                height: 9,
              ),
              Text(
                '\$ 2,090.20',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w400),
              )
            ],
          ),
          //column2
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 1,
                height: 30,
                color: Color.fromARGB(255, 173, 165, 165),
              )
            ],
          ),
          //column 3
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Spent',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w100),
              ),
              SizedBox(
                height: 9,
              ),
              Text(
                '\$ 1,290',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w400),
              )
            ],
          ),
        ],
      ),
    );
  }
}
