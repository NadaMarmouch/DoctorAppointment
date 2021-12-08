import 'package:doctor_appointment/screens/editprofile.dart';
import 'package:flutter/material.dart';
import 'screens/firstscreen.dart';
import 'screens/signup.dart';
import 'screens/home_page.dart';
import 'screens/doctor_details.dart';
import 'screens/login.dart';
import 'screens/editprofile.dart';

void main() {
  runApp(MaterialApp(
    title: 'Doctor Appointment',
    routes: {
//'/': (context) => FirstScreen(),
      '/': (context) => SignupPage(),
      '/login': (context) => LoginPage(),
      '/home': (context) => HomePage(),
      '/details': (context) => DoctorDetailPage(),
      '/editprofile': (context) => EditProfileUI(),
    },
  ));
}
