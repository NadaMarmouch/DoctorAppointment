import 'package:flutter/material.dart';
import 'package:doctor_appointment/screens/doctor_details.dart';
import 'package:doctor_appointment/widget/toprated.dart';
import 'package:doctor_appointment/widget/category.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xFF00abff),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('User Name'),
            ),
            ListTile(
              title: const Text('Home page'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Edit Profile'),
              onTap: () {
                Navigator.pushNamed(context, '/editprofile');
              },
            ),
            ListTile(
              title: const Text('Rate'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Logout'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Doctor Appointment'),
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
              margin: EdgeInsets.only(top: 20, left: 20),
              child: Text(
                "Hi,......",
                style: TextStyle(
                  color: Color(0xff363636),
                  fontSize: 25,
                  fontFamily: 'Roboto',
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 5, left: 20),
              child: Text(
                "Welcome Back",
                style: TextStyle(
                  color: Color(0xff363636),
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Roboto',
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 25, left: 20, right: 20),
              width: size.width,
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
                            TextStyle(color: Color(0xFF00abff), fontSize: 20),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Search..',
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
            Container(
              width: size.width,
              margin: EdgeInsets.only(top: 20, left: 20),
              child: Stack(
                fit: StackFit.loose,
                children: [
                  Container(
                    child: Text(
                      'Category',
                      style: TextStyle(
                        color: Color(0xff363636),
                        fontSize: 20,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                    
                ],
              ),
            ),
            Container(
              height: 120,
              margin: EdgeInsets.only(top: 20, left: 20),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  category("assets/tooth.png", "Dentisty", "10 Doctors"),
                  category("assets/brain.png", "Neurology", "5 Doctors"),
                  category("assets/bone.png", "Orthopedics", "5 Doctors"),
                  category("assets/heart.png", "cardiology and vascular disease", "4 Doctors"),
                  
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 5, left: 20),
              child: Text(
                "Top Rated",
                style: TextStyle(
                  color: Color(0xff363636),
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
      
        
          toprated("assets/teeth.jpg","Dr. Nour El Den", "Dentisty", "4.7",350),SizedBox(height: 5,),
           toprated("assets/boness.jpg","Dr. Mohamed zaher", "Bone Specialist","4.8",350),SizedBox(height: 5,),
          toprated("assets/Neurology.PNG","Dr. Ahmed Zahran", "Neurology Specialist","4.4",350),SizedBox(height: 5,),
          toprated( "assets/cardiology.PNG","Dr. Mohamed Ramdon","cardiology disease", "4.1",350),SizedBox(height: 5,)
         ]
      )  ]
    )
   )
  );
  
  }

}