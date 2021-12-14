import 'screens/signup.dart';
import 'screens/home_page.dart';
import 'screens/doctor_details.dart';
import 'screens/login.dart';
import 'screens/editprofile.dart';
import 'screens/profile.dart';
import 'screens/first_screen.dart';
import 'screens/doctor_profile.dart';
import 'package:doctor_appointment/screens/ratingPage.dart';

void main() {
  runApp(MaterialApp(
    title: 'Doctor Appointment',
    routes: {
      '/': (context) => firstscreen(),
      '/signup': (context) => SignupPage(),
      '/login': (context) => LoginPage(),
      '/home': (context) => HomePage(),
      '/details': (context) => DoctorDetailPage(),
      '/editprofile': (context) => EditProfileUI(),
      '/doctorreserve': (context) => DoctorProfilePage(),
<<<<<<< HEAD
<<<<<<< HEAD
      //  '/rate': (context) => rateing(),
=======
      '/rate': (context) => RatingsPage(),
>>>>>>> 19f3286738fa542e8d8803933ab34a9d9e558ecd
=======
    //  '/rate': (context) => RatingsPage(),
>>>>>>> b0a461d6fd39074cb3cd1ccc9d837c3812bab07e
    },
  ));
}
