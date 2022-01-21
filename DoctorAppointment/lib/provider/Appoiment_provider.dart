import 'package:doctor_appointment/screens/Appoiments.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:doctor_appointment/model/appoiment.dart';
class AppoimentProvider extends ChangeNotifier {
 appoiment appoiments=appoiment("mohamed","Heart","17/2/2021","20:10");

 List<appoiment> x=[appoiment("mohamed","Heart","17/2/2021","20:10")];

AppoimentProvider(this.appoiments);
  List<appoiment> get appoimentlist => x;
  addAppoiment(String DrName, String time, String date, String DrType) 
  {
    appoiments.DrName=DrName;
    appoiments.time=time;
    appoiments.date=date;
    appoiments.DrType=DrType;
    x.add(appoiments);
    notifyListeners();

  }
}
