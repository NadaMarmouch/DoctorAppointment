import 'package:flutter/material.dart';
import 'package:doctor_appointment/screens/Signup.dart';
import 'package:doctor_appointment/screens/home_page.dart';
import 'package:doctor_appointment/screens/doctor_details.dart';
import 'screens/Login.dart';
import 'screens/Signup.dart';


void main() {
  runApp( MaterialApp(
    title: 'Doctor Appointment',
    routes: {
//'/': (context) => FirstScreen(),
'/': (context) => SignupPage(),
'/login': (context) => LoginPage(),
'/home': (context) => HomePage(),
'/details': (context) => DoctorDetailPage(),
},
  ));
}
