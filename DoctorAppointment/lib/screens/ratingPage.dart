import 'package:flutter/material.dart';
import 'package:doctor_appointment/widget/rating.dart';

class RatingsPage extends StatefulWidget {
  @override
  _RatingsPage createState() => _RatingsPage();
}

class _RatingsPage extends State<RatingsPage> {
 int? _rating;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Rating")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Rating((rating) {
                setState(() {
                  _rating = rating;
                });
              }, 5),
              SizedBox(
                  height: 44,
                  child: (_rating != null && _rating != 0)
                      ? Text("You selected $_rating rating",
                          style: TextStyle(fontSize: 18))
                      : SizedBox.shrink())
            ],
          ),
        ));
  }
}
