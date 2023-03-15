// import 'dart:js_util';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          child: LoginPage(),
        ),
      ),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(
            child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(horizontal: 35),
              child: Center(
                child: Image.asset("assets/images/calmcorner01removed.png"),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 35),
              child: Center(
                child: Image.asset("assets/images/calmcorner03removed.png"),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 50),
              child: Text(
                "Your presence will be appreceated here.",
                textAlign: TextAlign.center,
                style: TextStyle(color: Color(0xFFB27AB8B), fontSize: 22),
              ),
            ),
            // Container(
            //   margin: const EdgeInsets.only(top: 50),
            //   child: Text("Your presence will be appreceated here."),
            // ),
          ],
        )),
        // ElevatedButton(
        //   child: Text('Get Started'),
        //   onPressed: () {},
        //   style: ElevatedButton.styleFrom(
        //       backgroundColor: Colors.green,
        //       padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
        //       textStyle: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
        // ),
        Container(
          child: Container(
            margin: EdgeInsets.all(32),
            padding: EdgeInsets.all(20),
            width: double.infinity,
            decoration: BoxDecoration(
                color: Color(0xFFB27AB8B),
                borderRadius: BorderRadius.circular(50)),
            child: Center(
              child: Text(
                "Get Startd",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
      ],
    ));
  }
}
