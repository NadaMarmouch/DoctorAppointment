import 'package:flutter/material.dart';
import 'package:doctor_appointment/widget/Appoiments_item.dart';
import 'package:doctor_appointment/provider/Appoiment_provider.dart';
import 'package:provider/provider.dart';

class Appoiments extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => AppoimentsState();
}

class AppoimentsState extends State<Appoiments> {
  @override

  Widget build(BuildContext context) {
  {
    Size size = MediaQuery.of(context).size;
    return ChangeNotifierProvider(create: (context)=>AppoimentProvider(),
    child:Scaffold(
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
                Navigator.pushNamed(context,'/home');
              },
            ),
            ListTile(
              title: const Text('Edit Profile'),
              onTap: () {
                Navigator.pushNamed(context, '/editprofile');
              },
            ),
            ListTile(
              title: const Text('My Appointment'),
              onTap: () {
                Navigator.pushNamed(context,'/appoiment');
              },
            ),
            ListTile(
              title: const Text('Rate'),
              onTap: () {
                Navigator.pushNamed(context, '/rate');
              },
            ),
            ListTile(
              title: const Text('Logout'),
              onTap: () {
                Navigator.pushNamed(context, '/');
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Color(0xFF00abff),
          centerTitle: true,
          actions: [
            GestureDetector(
              child: Container(
                margin: EdgeInsets.only(right: 10),
                child: Icon(
                  Icons.notifications_rounded,
                  color: Colors.white,
                ),
              ),
            ),
          ]),
      body: Container(
        decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(30), topLeft: Radius.circular(30))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(top: 5, left: 20),
              child: Text(
                "My Activity",
                style: TextStyle(
                  color: Color(0xff363636),
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Roboto',
                ),
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(left: 20, right: 20),
                child: ListView(
                  children: [
                    MyActivity(
                        "assets/doc.PNG",
                        "Dr. Fred Mask",
                        "Heart surgen",
                        "Completed",
                        "",
                        "8AM",
                        "21 Jan Tuesday"),
                    MyActivity(
                        "assets/doc.PNG",
                        "Dr. Stella Kane",
                        "Bone Specialist",
                        "Canceled",
                        "",
                        "8AM",
                        "21 Jan Tuesday"),
                    MyActivity(
                        "assets/doc.PNG",
                        "Dr. Zac Wolff",
                        "Eyes Specialist",
                        "Pending",
                        "",
                        "8AM",
                        "21 Jan Tuesday"),
                    MyActivity(
                        "assets/doc.PNG",
                        "Dr. Fred Mask",
                        "Heart surgen",
                        "Canceled",
                        "",
                        "8AM",
                        "21 Jan Tuesday"),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }

  Widget demoCategories(String img, String name, String drCount) {
    return Container(
      width: 100,
      margin: EdgeInsets.only(right: 15),
      decoration: BoxDecoration(
        color: Color(0xff107163),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            child: Image.asset(img),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Text(
              name,
              style: TextStyle(
                color: Colors.white,
                fontSize: 13,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            padding: EdgeInsets.all(7),
            decoration: BoxDecoration(
              color: Color(0xffd9fffa).withOpacity(0.07),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Text(
              drCount,
              style: TextStyle(
                color: Colors.white,
                fontSize: 8,
                fontFamily: 'Roboto',
              ),
            ),
          ),
        ],
      ),
    );
  }
}}
