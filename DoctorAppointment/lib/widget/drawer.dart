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
              Navigator.pushNamed(context,'/home');
            },
          ),
           ListTile(
            title: const Text('Settings'),
            onTap: () {
              Navigator.pushNamed(context, '/settings');
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
                Navigator.pushNamed(context, '/appoiment');
            },
          ),
           
           ListTile(
            title: const Text('Google Map'),
            onTap: () {
              Navigator.pushNamed(context,'/map');
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
    );
  }
}
