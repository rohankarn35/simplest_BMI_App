import 'package:bmi/homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoginPage_female extends StatelessWidget {
  LoginPage_female({super.key});
  TextEditingController height_female = TextEditingController();
  TextEditingController weight_female = TextEditingController();

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
                Image.asset(
                  "assets/images/hi.jpeg",
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  height: 90,
                ),
                TextField(
                    controller: height_female,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        hintText: "Enter your height in CMs",
                        labelText: "Height",
                        focusColor: Color.fromARGB(255, 147, 135, 181),
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
                    controller: weight_female,
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
                    double result = calculate(double.parse(height_female.text),
                        double.parse(weight_female.text));

                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => HomePage_1(
                                result: result,
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

  double calculate(female_height, female_weight) {
    return female_weight / ((female_height * female_height) / 10000);
  }
}
