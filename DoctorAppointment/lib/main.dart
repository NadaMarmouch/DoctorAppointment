import 'dart:js';

import 'package:doctor_appointment/screens/editprofile.dart';
import 'package:flutter/material.dart';

import 'screens/signup.dart';
import 'screens/home_page.dart';
import 'screens/doctor_details.dart';
import 'screens/login.dart';
import 'screens/editprofile.dart';
import 'screens/profile.dart';
import 'screens/Appoiments.dart';
import 'screens/first_screen.dart';
import 'screens/doctor_profile.dart';
import 'package:doctor_appointment/screens/ratingPage.dart';

void main() {
  runApp(MaterialApp(
    title: 'Doctor Appointment',
    routes: {
      /// '/': (context) => firstscreen(),
      '/': (context) => HomePage(),
      '/signup': (context) => SignupPage(),
      '/login': (context) => LoginPage(),
      '/details': (context) => DoctorDetailPage(),
      '/editprofile': (context) => EditProfileUI(),
      '/doctorreserve': (context) => DoctorProfilePage(),
      '/rate': (context) => RatingsPage(),
      '/appoiment': (context) => Appoiments(),
    },
  ));
}
