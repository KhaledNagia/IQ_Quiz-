import 'package:flutter/material.dart';
import 'package:iq_quiz/screens/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IQ Quiz',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
