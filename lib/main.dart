import 'package:flutter/material.dart';
import 'package:flutter_application_9/view/home_screen.dart';
void main(List<String> args) {
  runApp(MyAPP());
}



class MyAPP extends StatelessWidget {
  const MyAPP({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}