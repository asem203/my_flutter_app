import 'package:flutter/material.dart';
import 'package:untitled/pages/login.dart';
import 'package:untitled/pages/singup.dart';
import 'package:untitled/pages/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/": (context) => const Welcome(),
        "/login": (context) => const Login(),
        "/singup": (context) => const Singup(),
      },
    );
  }
}
