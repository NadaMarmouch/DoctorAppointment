import 'package:doctor_appointment/screens/Appoiments.dart';
import 'package:doctor_appointment/screens/editprofile.dart';
import 'package:doctor_appointment/screens/viewappointments.dart';
import 'package:flutter/material.dart';
import 'screens/signup.dart';
import 'screens/home_page.dart';
import 'screens/doctor_details.dart';
import 'screens/login.dart';
import 'screens/editprofile.dart';
import 'screens/profile.dart';
import 'screens/first_screen.dart';
import 'screens/booking.dart';
import 'screens/notifications.dart';
import 'screens/Appoiments.dart';
import 'package:doctor_appointment/screens/ratingpage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'screens/drprofile.dart';
import 'screens/aboutus.dart';
import 'screens/settings.dart';
void main() async{

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Doctor Appointment',
    theme: ThemeData(fontFamily: 'Tahoma'),
    initialRoute: '/',
    routes: {
      '/': (context) => firstscreen(),
      '/signup': (context) => SignupPage(),
      '/login': (context) => LoginPage(),
      '/home': (context) => HomePage(),
      '/details': (context) => DoctorDetailPage(),
      '/editprofile': (context) => EditProfileUI(),
      '/doctorreserve': (context) => Booking(),
      '/rate': (context) => RatingsPage(),
      '/notify': (context) => Notifications(),
      '/viewappoint': (context) => ViewAppointment(),
      '/appoiment': (context) => Appoiments(),
      '/drprofile': (context) => Drprofile(),
       '/aboutus': (context) => AboutUs(),
      '/settings': (context) => SettingsPage(),
    },
  ));
}
