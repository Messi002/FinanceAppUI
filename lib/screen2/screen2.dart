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
      drawer: Drawer(),
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
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Text(
                    'Current balance',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    '\$ 2,090.20',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 35),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Container(
                    height: 100,
                    padding: const EdgeInsets.fromLTRB(16, 16, 60, 16),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 39, 27, 166),
                        borderRadius: BorderRadius.circular(16.0)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //column 1
                        Column(
                           mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [Text('Income'), Text('\$ 2,090.20', style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400),)],
                        ),
                        //column 2
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Spent',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w100),
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
                  )
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
