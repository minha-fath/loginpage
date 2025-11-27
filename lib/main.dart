import 'package:flutter/material.dart';
import 'package:loginpage/login.dart';
import 'package:loginpage/sign.dart';
import 'package:loginpage/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      home: Welcome(),
    );
  }
}
