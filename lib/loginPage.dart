import 'package:bmi/homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  TextEditingController height = TextEditingController();
  TextEditingController weight = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Material(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 20.0),
            child: Column(
              children: [
                SizedBox(
                  height: 40,
                ),
                Image.asset("assets/images/hi.jpeg"),
                SizedBox(
                  height: 90,
                ),
                TextField(
                    controller: height,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        hintText: "Enter your height in CMs",
                        labelText: "Height",
                        focusColor: Colors.deepPurpleAccent,
                        enabledBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(50.0))),
                        focusedBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(50.0)),
                            borderSide:
                                BorderSide(color: Colors.deepPurpleAccent)))),
                SizedBox(
                  height: 40,
                ),
                TextField(
                    controller: weight,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        hintText: "Enter your weight in KGs",
                        labelText: "Weight",
                        enabledBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(50.0))),
                        focusedBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(50.0)),
                            borderSide:
                                BorderSide(color: Colors.deepPurpleAccent)))),
                SizedBox(
                  height: 80,
                ),
                ElevatedButton(
                  onPressed: () {
                    double result1 = calculate1(
                        double.parse(height.text), double.parse(weight.text));
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => HomePage(
                                result1: result1,
                              )),
                    );
                  },
                  child: Text(
                    "Calculate",
                    textScaleFactor: 1.5,
                  ),
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50))),
                      fixedSize: MaterialStateProperty.all(Size(140.0, 50.0)),
                      elevation: MaterialStateProperty.all(10.0),
                      backgroundColor:
                          MaterialStateProperty.all(Colors.deepPurpleAccent)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  double calculate1(height, weight) {
    return weight / ((height * height) / 10000);
  }
}
