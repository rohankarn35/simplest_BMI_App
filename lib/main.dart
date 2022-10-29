import 'package:bmi/gender_select.dart';
import 'package:bmi/loginPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: const MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      appBar: AppBar(
        toolbarHeight: 110,
        centerTitle: true,
        elevation: 0.0,
        title: Title(
          color: Colors.deepPurpleAccent,
          child: Text(
            "BMI Calculator",
            style: TextStyle(fontSize: 35.0, fontWeight: FontWeight.w700),
          ),
        ),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Material(
        color: Colors.deepPurpleAccent,
        child: SingleChildScrollView(
          child: Container(
            color: Colors.deepPurpleAccent,
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.02),
                  child: Image.asset(
                    "assets/images/welcome.png",
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  height: 128,
                ),
                Container(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.01),
                  child: CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.white,
                    child: IconButton(
                      color: Colors.deepPurpleAccent,
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => GenderSelect(),
                            ));
                      },
                      icon: Icon(Icons.arrow_forward),
                    ),
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
