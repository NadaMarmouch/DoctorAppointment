import 'package:flutter/material.dart';
import 'package:doctor_appointment/widget/appbar.dart';

class Notifications extends StatefulWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: TopBar("Notifications"),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: isSwitched? [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Notifications"),
                  Switch(
                    value: isSwitched,
                    onChanged: (value) {
                      setState(() {
                        isSwitched = value;
                        print(isSwitched);
                      });
                    },
                    activeTrackColor: Colors.blueGrey,
                    activeColor: Colors.blue,
                  ),

        
                ],
              ),
        
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Container(
                  width: double.infinity,
                  height: 100,
                  color: Colors.blue ,
                  child: Center(child: Text("Mohamed reserved an appointment on Sunday")),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Container(
                  width: double.infinity,
                  height: 100,
                  color: Colors.blue ,
                  child: Center(child: Text("Alaa reserved an appointment on Monday")),
                ),
              ),
        // condition ? true : false;
            ] : [
              //switch is off goes here
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Notifications"),
                  Switch(
                    value: isSwitched,
                    onChanged: (value) {
                      setState(() {
                        isSwitched = value;
                        print(isSwitched);
                      });
                    },
                    activeTrackColor: Colors.blueGrey,
                    activeColor: Colors.blue,
                  ),

        
                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}
