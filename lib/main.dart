import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var randomNumber = 1;

  void updateBall() {
    setState(() {
      randomNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue.shade200,
        appBar: AppBar(
          title: const Text(
            'Ask Me Anything',
            style: TextStyle(
                color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.blue.shade700,
        ),
        body: SafeArea(
          child: Center(
            child: Expanded(
              child: TextButton(
                onPressed: () {
                  updateBall();
                },
                child: Image.asset('images/ball$randomNumber.png'),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
