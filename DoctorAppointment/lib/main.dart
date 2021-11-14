import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// This widget is the root of your application.
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext) {
    return MaterialApp(
        home: Scaffold(
            body: MyHome(),
            appBar: AppBar(title: Text('My App')),
            drawer: Drawer(
                child: ListView(
              padding: EdgeInsets.zero,
              children: [
                const DrawerHeader(child: Text('Text')),
                ListTile(
                  title: Text("Item 1"),
                  onTap: null,
                ),
                ListTile(
                  title: Text("Item 2"),
                  onTap: null,
                )
              ],
            ))));
  }
}

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        SizedBox(height: 50),
        Image.asset('assets/logo.jpg'),
        Text('Doctor Appointment'),
      ]),
      SizedBox(height: 150),
      TextField(
        decoration:
            InputDecoration(border: OutlineInputBorder(), hintText: 'Username'),
      ),
      TextField(
        decoration:
            InputDecoration(border: OutlineInputBorder(), hintText: 'Password'),
      ),
      ButtonBar(
        children: [
          TextButton(onPressed: null, child: Text('cancle')),
          ElevatedButton(onPressed: () {}, child: Text('Next'))
        ],
      ),
    ]);
  }
}
