// import 'dart:js_util';  /'

import 'dart:developer';
import 'package:calm_corner01/login.dart';

import 'register.dart';
import 'package:flutter/foundation.dart';
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
        ElevatedButton(
          child: Text('Get Started'),
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(horizontal: 80, vertical: 10),
            elevation: 0,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(50),
              ),
            ),
            minimumSize: Size(327, 50),
            backgroundColor: Colors.green,
            textStyle: const TextStyle(
                color: Colors.white, fontSize: 20, fontStyle: FontStyle.normal),
          ),
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: ((context) => MyRegister())));
          },
        ),
        const SizedBox(
          width: 600.0,
          height: 10.0,
        ),
      ],
    ));
  }
}
