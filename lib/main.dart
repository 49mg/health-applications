import 'package:flutter/material.dart';
import 'package:health_app/screens/welcome_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Health App",
      home: Scaffold(
        backgroundColor: Colors.white,
        body: WelcomeScreen(),
      ),
    );
  }
}

