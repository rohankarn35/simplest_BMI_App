import 'package:bmi/loginPage.dart';
import 'package:bmi/login_page_female.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class GenderSelect extends StatelessWidget {
  const GenderSelect({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 135, 114, 192),
      body: Material(
        child: Container(
          padding:
              EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.25),
          child: Column(
            children: [
              Text(
                "Select Your Gender",
                style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.w800,
                    color: Color.fromARGB(255, 56, 14, 161)),
              ),
              SizedBox(
                height: 160,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton.icon(
                        icon: Icon(
                          Icons.male_rounded,
                          color: Colors.white,
                          size: 35.0,
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LoginPage(),
                              ));
                        },
                        label: Text(
                          "Male",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold),
                        ),
                        style: ButtonStyle(
                            animationDuration: Duration(milliseconds: 600),
                            elevation: MaterialStateProperty.all(30),
                            fixedSize:
                                MaterialStateProperty.all(Size(150.0, 140.0)),
                            backgroundColor: MaterialStateProperty.all(
                                Colors.deepPurpleAccent)),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton.icon(
                        icon: Icon(
                          Icons.female_rounded,
                          color: Colors.white,
                          size: 35.0,
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LoginPage_female(),
                              ));
                        },
                        label: Text(
                          "Female",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold),
                        ),
                        style: ButtonStyle(
                            animationDuration: Duration(milliseconds: 600),
                            elevation: MaterialStateProperty.all(30),
                            fixedSize:
                                MaterialStateProperty.all(Size(150.0, 140.0)),
                            backgroundColor: MaterialStateProperty.all(
                                Colors.deepPurpleAccent)),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
