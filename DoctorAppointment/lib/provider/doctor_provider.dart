import 'package:doctor_appointment/screens/appointments.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:doctor_appointment/model/doctors.dart';

class DoctorProvider extends ChangeNotifier {
  Doctor doctor;
  DoctorProvider(this.doctor);

  List<Doctor> x = [
    Doctor(
        "name", "category", "description", "location", 1, 2, "reviews", "image")
  ];

  List<Doctor> get doctorlist => x;
}
