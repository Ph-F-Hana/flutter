import 'package:flutter/material.dart';
import 'package:flutter_udemy/modules/bmi/bmi_screen.dart';
import 'package:flutter_udemy/modules/counter/counter_screen.dart';
import 'package:flutter_udemy/modules/home/home_screen.dart';
import 'package:flutter_udemy/modules/login/login_screen.dart';
import 'package:flutter_udemy/modules/messanger/messanger_screen.dart';
import 'package:flutter_udemy/modules/users/users_screen.dart';

void main() {
  runApp(MyApp());
}

// Stateless
// Stateful

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }

}