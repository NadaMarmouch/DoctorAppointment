import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Doctor Appointment App'),
      ),
      body: Center(
          child: ButtonBar(children: [
        ElevatedButton(
          child: const Text('Login'),
          onPressed: () {
            Navigator.pushNamed(context, '/login');
          },
        ),
        ElevatedButton(
          child: const Text('Login'),
          onPressed: () {
            Navigator.pushNamed(context, '/login');
          },
        ),
      ])),
    );
  }
}
