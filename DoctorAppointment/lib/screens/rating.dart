import 'package:flutter/material.dart';
import 'package:doctor_appointment/widget/rate_doctors.dart';

class rateing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: "Rating", home: RatingsPage());
  }
}

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
              const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Enter a Feedback',
            ),
          ),
        ),
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