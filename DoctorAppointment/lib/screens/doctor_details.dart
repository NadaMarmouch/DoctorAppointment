import 'package:flutter/material.dart';
import 'package:doctor_appointment/widget/toprated.dart';
import 'package:doctor_appointment/widget/doctor_name.dart';


class DoctorDetailPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _DoctorDetailState();
}

class _DoctorDetailState extends State<DoctorDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       title: Text('Doctor List'),
         elevation: 0.0,
         backgroundColor: Color(0xFF00abff),
         centerTitle: true,
      ),
      body: Container( 
        decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(30), topLeft: Radius.circular(30))),
             
             
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [

         Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(top: 25, left: 20, right: 20),
             // width: size.width,
              height: 60,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xFF00abff),
                    offset: Offset(0, 10),
                    blurRadius: 15,
                    spreadRadius: 0,
                  ),
                ],
              ),
              child: Row(
                children: [
                  Expanded(
                    flex: 5,
                    child: Container(
                      margin: EdgeInsets.only(left: 10, right: 10),
                      child: TextField(
                        maxLines: 1,
                        autofocus: false,
                        style:
                            TextStyle(color: Color(0xFF00abff), fontSize: 15),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Search for doctor..',
                        ),
                        cursorColor: Color(0xFF00abff),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xFF0077c6), //search color
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(
                        child: Icon(
                          Icons.search,
                          color: Colors.white,
                          size: 25,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,

  
            ),
  doctor_name("assets/dr.jpg", "Dr.Yehia Ebeid", "Density", "250L.E","Heliopolis: Ankara st. infront of cairo complex mall sherton",450),
  doctor_name("assets/doctor.jpg", "DR. Alyaa Abd Elhameed", "density", "200L.E","Heliopolis: 57 Hassan Aflaton stfrom ALNozzha st  ard el golf",450),
  doctor_name("assets/teeth.jpg","Dr. Nour El Den", "Dentisty", "200"," Al Manteqah as Sadesah, Nasr City, Cairo Governorate",450),
  doctor_name("assets/teeth.jpg","Dr. Nour El Den", "Dentisty", "200"," Al Manteqah as Sadesah, Nasr City, Cairo Governorate",450),
   doctor_name("assets/doc.PNG","Dr. Ahmed Mohsin", "Dentisty", "300"," HCC medical mall clinic 208 (behind air force hospital) , fifth settlement",450)
          ],
      )])  ),
      
    );
  }}