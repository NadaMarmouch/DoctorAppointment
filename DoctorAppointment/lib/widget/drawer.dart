import 'package:flutter/material.dart';

class Drawers extends StatelessWidget {
  const Drawers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Center(
              child: Text(
                'WELCOME',
                style: TextStyle(fontSize: 24, fontFamily: 'Tahoma'),
              ),
            ),
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
            title: const Text('My Appointment'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Text('Rate'),
            onTap: () {
              Navigator.pushNamed(context, '/rate');
            },
          ),
          ListTile(
            title: const Text('View Appointments'),
            onTap: () {
              Navigator.pushNamed(context, '/viewappoint');
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
    );
  }
}
