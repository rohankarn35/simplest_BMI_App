import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key, required this.result1});
  double result1;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      body: Container(
        padding:
            EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.25),
        child: Column(
          children: [
            Text(
              "Your BMI",
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 40,
            ),
            SizedBox(
              height: 100,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "${result1.toStringAsPrecision(4)}",
                  style: TextStyle(fontSize: 70, color: Colors.white),
                ),
              ],
            ),
            SizedBox(
              height: 100,
            ),
            result1 < 18.50
                ? Text(
                    "Underweight",
                    style: TextStyle(
                        color: Color.fromARGB(255, 207, 229, 6),
                        fontSize: 25,
                        fontWeight: FontWeight.w500),
                  )
                : result1 >= 18.51 && result1 <= 24.90
                    ? Text(
                        "You have normal weight",
                        style: TextStyle(
                            color: Color.fromARGB(255, 45, 221, 29),
                            fontSize: 25,
                            fontWeight: FontWeight.w500),
                      )
                    : result1 > 24.91
                        ? Text(
                            "Overweight",
                            style: TextStyle(
                                color: Color.fromARGB(255, 171, 8, 8),
                                fontSize: 25,
                                fontWeight: FontWeight.w500),
                          )
                        : Container(),
          ],
        ),
      ),
    );
  }
}

class HomePage_1 extends StatelessWidget {
  HomePage_1({super.key, required this.result});
  double result;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 98, 66, 185),
      body: Container(
        padding:
            EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.25),
        child: Column(
          children: [
            Text(
              "Your BMI",
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 40,
            ),
            SizedBox(
              height: 100,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "${result.toStringAsPrecision(4)}",
                  style: TextStyle(fontSize: 70, color: Colors.white),
                ),
              ],
            ),
            SizedBox(
              height: 100,
            ),
            result < 18.50
                ? Text(
                    "Underweight",
                    style: TextStyle(
                        color: Color.fromARGB(255, 207, 229, 6),
                        fontSize: 25,
                        fontWeight: FontWeight.w500),
                  )
                : result >= 18.51 && result <= 24.90
                    ? Text(
                        "You have normal weight",
                        style: TextStyle(
                            color: Color.fromARGB(255, 45, 221, 29),
                            fontSize: 25,
                            fontWeight: FontWeight.w500),
                      )
                    : result > 24.91
                        ? Text(
                            "Overweight",
                            style: TextStyle(
                                color: Color.fromARGB(255, 171, 8, 8),
                                fontSize: 25,
                                fontWeight: FontWeight.w500),
                          )
                        : Container(),
          ],
        ),
      ),
    );
  }
}
