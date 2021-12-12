import 'package:doctor_appointment/screens/editprofile.dart';
import 'package:flutter/material.dart';
import 'screens/signup.dart';
import 'screens/home_page.dart';
import 'screens/doctor_details.dart';
import 'screens/login.dart';
import 'screens/editprofile.dart';
import 'screens/profile.dart';
import 'screens/first_screen.dart';
import 'screens/doctor_profile.dart';

void main() {
  runApp(MaterialApp(
    title: 'Doctor Appointment',
    routes: {
      // '/': (context) => firstscreen(),
      // '/signup': (context) => SignupPage(),
      // '/login': (context) => LoginPage(),
      // '/home': (context) => HomePage(),
      // '/details': (context) => DoctorDetailPage(),
      // '/editprofile': (context) => EditProfileUI(),
      '/': (context) => DoctorProfilePage(),
    },
  ));
}
