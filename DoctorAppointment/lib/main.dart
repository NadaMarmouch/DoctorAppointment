import 'package:doctor_appointment/screens/Signup.dart';
import 'package:flutter/material.dart';
import 'package:doctor_appointment/screens/home_page.dart';
import 'screens/Login.dart';
import 'screens/Signup.dart';
import 'screens/Firstscreen.dart';

void main() {
  runApp( MaterialApp(
    title: 'Doctor Appointment',
  // home: FirstScreen(),
   // home: SignupPage(),
   // home: HomePage(),
    routes: {
'/': (context) => SignupPage(),
'/login': (context) => LoginPage(),
'/home': (context) => HomePage(),
},
  ));
}
