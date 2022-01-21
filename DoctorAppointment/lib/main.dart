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
import 'screens/drprofile.dart';
import 'screens/aboutus.dart';
import 'screens/settings.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'services/auth.dart';
import 'provider/Appoiment_provider.dart';

Future<void> main() async {
  //WidgetsFlutterBinding.ensureInitialized();
  //await Firebase.initializeApp();

  runApp(ChangeNotifierProvider(
      create: (_) => AppoimentProvider(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Doctor Appointment',
        theme: ThemeData(fontFamily: 'Tahoma'),
        initialRoute: '/',
        routes: {
          //  '/': (context) => firstscreen(),
          //  '/signup': (context) => SignupPage(),
          //  '/login': (context) => LoginPage(),
          '/': (context) => HomePage(),

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
        }));
  }

// class MyApp extends StatelessWidget {
//   final _fbApp =Firebase.initializeApp();
//   @override
//   Widget build(BuildContext context) {
//     return MultiProvider(
//       providers: [
//         Provider<AuthenticationService>(
//           create: (_) => AuthenticationService(FirebaseAuth.instance),
//         ),
//         StreamProvider(
//           create: (context) => context.read<AuthenticationService>().authStateChanges,
//           initialData: null,
//         )
//       ],
//       child: MaterialApp(
//         title: 'Doctor Appointment',
//         theme: ThemeData(
//           primarySwatch: Colors.blue,
//           visualDensity: VisualDensity.adaptivePlatformDensity,
//         ),
//          initialRoute: '/',
//          routes: {
//        '/': (context) => firstscreen(),
//        '/signup': (context) => SignupPage(),
//        '/login': (context) => LoginPage(),
//        '/home': (context) => HomePage(),
//        '/details': (context) => DoctorDetailPage(),
//        '/editprofile': (context) => EditProfileUI(),
//        '/doctorreserve': (context) => Booking(),
//        '/rate': (context) => RatingsPage(),
//        '/notify': (context) => Notifications(),
//        '/viewappoint': (context) => ViewAppointment(),
//        '/appoiment': (context) => Appoiments(),
//        '/drprofile': (context) => Drprofile(),
//         '/aboutus': (context) => AboutUs(),
//        '/settings': (context) => SettingsPage(),
//      },
//         home: FutureBuilder(
//           future: _fbApp,
//           builder: (context,snapshot){
//             if (snapshot.hasError){
//               //return Dialog();
//               return Text("text");

//             }else if (snapshot.hasData){
//               return Text("text");
//             }
//             else {
//              // return CircularProgressIndicator();
//              return Text("text2");
//             }
//           }
//         ),
//       ),
//     );
//   }
// }

// class AuthenticationWrapper extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final firebaseUser = context.watch<User?>();

//     if (firebaseUser != null) {
//       return HomePage();
//     }
//     return LoginPage();
//   }
// }
}
