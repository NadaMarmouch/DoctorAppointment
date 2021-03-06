// import 'package:doctor_appointment/services/auth.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:doctor_appointment/theme/theme.dart';
// import 'package:provider/provider.dart';
// import 'package:firebase_auth/firebase_auth.dart';

// class LoginPage extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() {
//     return _LoginPageState();
//   }
// }

// class _LoginPageState extends State<LoginPage> {
//   final _formKey = GlobalKey<FormState>();
//    final TextEditingController emailController = TextEditingController();
//    final TextEditingController passwordController = TextEditingController();
  
//   @override
//   void initState() {
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Form(
//         key: _formKey,
//         child: Scaffold(
//             body: Stack(children: <Widget>[
//           Container(
//             decoration: BoxDecoration(
//               image: DecorationImage(
//                 image: AssetImage("assets/sign.jpg"),
//                 fit: BoxFit.fill,
//               ),
//             ),
//           ),
//           Positioned.fill(
//             child: Opacity(
//               opacity: .6,
//               child: Container(
//                 decoration: BoxDecoration(
//                   gradient: LinearGradient(
//                       colors: [LightColor.purpleExtraLight, LightColor.purple],
//                       begin: Alignment.topCenter,
//                       end: Alignment.bottomCenter,
//                       tileMode: TileMode.mirror,
//                       stops: [.5, 6]),
//                 ),
//               ),
//             ),
//           ),
//           Container(
//             child: ListView(
//               children: <Widget>[
//                 Container(
//                   width: MediaQuery.of(context).size.width,
//                   height: MediaQuery.of(context).size.height / 3.5,
//                   decoration: BoxDecoration(
//                       gradient: LinearGradient(
//                         begin: Alignment.topCenter,
//                         end: Alignment.bottomCenter,
//                         colors: [Colors.white, Colors.white],
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Container(
//               height: MediaQuery.of(context).size.height / 2,
//               width: MediaQuery.of(context).size.width,
//               padding: EdgeInsets.only(top: 62),
//               child: Column(
//                 children: <Widget>[
//                   Container(
//                     width: MediaQuery.of(context).size.width / 1.2,
//                     height: 45,
//                     padding:
//                         EdgeInsets.only(top: 4, left: 16, right: 16, bottom: 4),
//                     decoration: BoxDecoration(
//                         borderRadius: BorderRadius.all(Radius.circular(50)),
//                         color: Colors.white,
//                         boxShadow: [
//                           BoxShadow(color: Colors.black12, blurRadius: 5)
//                         ]),
//                     child: TextFormField(
//                       validator: (value){
//                         if(value!.isEmpty){
//                           return 'Please enter your username';
//                         }
//                         return null;
//                       },
//                       decoration: InputDecoration(
//                         border: InputBorder.none,
//                         icon: Icon(
//                           Icons.person,
//                           size: 90,
//                           color: Colors.blue,
//                         ),
//                       ),
//                     ),
//                   ),
//                   Container(
//                     width: MediaQuery.of(context).size.width / 1.2,
//                     height: 45,
//                     margin: EdgeInsets.only(top: 32),
//                     padding:
//                         EdgeInsets.only(top: 4, left: 16, right: 16, bottom: 4),
//                     decoration: BoxDecoration(
//                         borderRadius: BorderRadius.all(Radius.circular(50)),
//                         color: Colors.white,
//                         boxShadow: [
//                           BoxShadow(color: Colors.black12, blurRadius: 5)
//                         ]),
//                     child: TextFormField(
//                       validator: (value){
//                         if(value!.length<7){
//                           return 'Please enter Your Password';
//                         }
//                         return null;
//                       },
//                       obscureText: true,
//                       decoration: InputDecoration(
//                         border: InputBorder.none,
//                         icon: Icon(
//                           Icons.vpn_key,
//                           color: Color(0xff6bceff),
//                         ),
//                       ),
//                     ))],
//                   ),
//                 ),
//                 Container(
//                   height: MediaQuery.of(context).size.height / 2,
//                   width: MediaQuery.of(context).size.width,
//                   padding: EdgeInsets.only(top: 62),
//                   child: Column(
//                     children: <Widget>[
//                       Container(
//                         width: MediaQuery.of(context).size.width / 1.2,
//                         height: 45,
//                         padding: EdgeInsets.only(
//                             top: 4, left: 16, right: 16, bottom: 4),
//                         decoration: BoxDecoration(
//                             borderRadius: BorderRadius.all(Radius.circular(50)),
//                             color: Colors.white,
//                             boxShadow: [
//                               BoxShadow(color: Colors.black12, blurRadius: 5)
//                             ]),
//                         child: TextFormField(
//                           validator: (value) {
//                             if (value!.isEmpty) {
//                               return 'Please enter your username';
//                             }
//                             return null;
//                           },
//                           decoration: InputDecoration(
//                             border: InputBorder.none,
//                             icon: Icon(
//                               Icons.person,
//                               color: Color(0xff6bceff),
//                             ),
//                             hintText: 'Username',
//                           ),
//                         ),
//                       ),
//                       Container(
//                         width: MediaQuery.of(context).size.width / 1.2,
//                         height: 45,
//                         margin: EdgeInsets.only(top: 32),
//                         padding: EdgeInsets.only(
//                             top: 4, left: 16, right: 16, bottom: 4),
//                         decoration: BoxDecoration(
//                             borderRadius: BorderRadius.all(Radius.circular(50)),
//                             color: Colors.white,
//                             boxShadow: [
//                               BoxShadow(color: Colors.black12, blurRadius: 5)
//                             ]),
//                         child: TextFormField(
//                           validator: (value) {
//                             if (value!.length < 7) {
//                               return 'Please enter Your Password';
//                             }
//                             return null;
//                           },
//                           obscureText: true,
//                           decoration: InputDecoration(
//                             border: InputBorder.none,
//                             icon: Icon(
//                               Icons.vpn_key,
//                               color: Color(0xff6bceff),
//                             ),
//                             hintText: 'Password',
//                           ),
//                          borderRadius: BorderRadius.all(Radius.circular(50))),
//                       child: Center(
//                           child: TextButton(
//                               child: Text('LOGIN'),
//                               style:
//                                   TextButton.styleFrom(primary: Colors.white),
//                               // style:TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
//                               onPressed: () {
//                                 context.read<AuthenticationService>().signin(
//                                 email: emailController.text.trim(),
//                                 password: passwordController.text.trim(), );
//                                 Navigator.pushNamed(context, '/home');
//                               }))
//                     ),
//                   ),
//                 ),
//                 SizedBox(
//                   height: 50,
//                 ),
//                 GestureDetector(
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: <Widget>[
//                       Text("Don't have an account ?"),
//                       Text(
//                         "Sign Up",
//                         style: TextStyle(color: Color(0xff6bceff)),
//                       ),
//                     ],
//                   ),
//                   onTap: () {
//                     Navigator.pop(context);
//                     Navigator.pushNamed(context, '/signup');
//                   },
//                 ),
//               ],
//             ),
//           ),
//         ])));
//   }
// }
