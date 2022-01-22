import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:doctor_appointment/theme/theme.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:provider/provider.dart';
import 'package:doctor_appointment/services/auth.dart';
//import 'package:awesome_dialog/awesome_dialog.dart';

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  var password, email;
  final _formKey2 = GlobalKey<FormState>();
  //final TextEditingController emailController = TextEditingController();
  //final TextEditingController passwordController = TextEditingController();
  @override
  void initState() {
    super.initState();
  }

// signup() async{
//     var formdata = _formKey.currentState;
//     if(formdata!.validate()){
//       print('valid');
//       formdata.save();
//       try{
//         UserCredential userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: password);
//        return userCredential;
//       }on FirebaseException catch(e){
//         if(e.code=='weak password'){
//           AwesomeDialog(
//             context:context,
//             title:"error",
//             body:Text("password is weak")
//           );
//         }else if(e.code=='email already taken'){
//            AwesomeDialog(
//             context:context,
//             title:"error",
//             body:Text("Email is already exist")
//           );
//         }
//       }catch(e){
//         print(e);
//       }
//     }
//   }
  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return Form(
        key: _formKey2,
        child: Scaffold(
            body: Stack(children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/sign.jpg"),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Positioned.fill(
            child: Opacity(
              opacity: .6,
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [LightColor.purpleExtraLight, LightColor.purple],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      tileMode: TileMode.mirror,
                      stops: [.5, 6]),
                ),
              ),
            ),
          ),
          Container(
              child: ListView(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 3.5,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.white, Colors.white],
                    ),
                    borderRadius:
                        BorderRadius.only(bottomLeft: Radius.circular(90))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Spacer(),
                    Align(
                      alignment: Alignment.center,
                      child: Icon(
                        Icons.person,
                        size: 90,
                        color: Colors.blue,
                      ),
                    ),
                    Spacer(),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 32, right: 32),
                        child: Text(
                          'Sign Up',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height / 2,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.only(top: 55),
                child: Column(
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width / 1.2,
                      height: 31,
                      padding: EdgeInsets.only(
                          top: 4, left: 14, right: 15, bottom: 4),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(color: Colors.black12, blurRadius: 5)
                          ]),
                      child: TextFormField(
                        controller: emailController,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter your email';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Email',
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 1.2,
                      height: 45,
                      padding: EdgeInsets.only(
                          top: 4, left: 16, right: 16, bottom: 4),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(color: Colors.black12, blurRadius: 5)
                          ]),
                      child: TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter your username';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Username',
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 1.2,
                      height: 45,
                      padding: EdgeInsets.only(
                          top: 4, left: 16, right: 16, bottom: 4),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(color: Colors.black12, blurRadius: 5)
                          ]),
                      child: TextFormField(
                        validator: (value) {
                          if (value!.length > 11) {
                            return 'Please enter your phonenumber';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Phone number',
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 1.2,
                      height: 45,
                      padding: EdgeInsets.only(
                          top: 4, left: 16, right: 16, bottom: 4),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(color: Colors.black12, blurRadius: 5)
                          ]),
                      child: TextFormField(
                        controller: passwordController,
                        validator: (value) {
                          if (value!.length > 6) {
                            return 'Please enter your password';
                          }
                          return null;
                        },
                        obscureText: true,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Password',
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/signup');
                      },
                      child: Container(
                        height: 45,
                        width: MediaQuery.of(context).size.width / 1.0,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color(0xff6bceff),
                                Color(0xFF00abff),
                              ],
                            ),
                            borderRadius:
                                BorderRadius.all(Radius.circular(50))),
                        child: Center(
                            child: TextButton(
                                child: Text('Signup'),
                                style:
                                    TextButton.styleFrom(primary: Colors.white),
                                // style:TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                                onPressed: () async {
                                  AuthenticationService authsignup = AuthenticationService();
                                  await authsignup.signup(email: "philip@gmail.com", password: "mopmop123");
                                  //  var user= await signup();
                                  //  if(user !=null){
                                  //  Navigator.pushNamed(context, '/home');
                                  //  }else{
                                  //    print('sign in is failed');
                                  //  }

                                  //if(_formKey.currentState!.validate()){
                                  // ScaffoldMessenger.of(context) .showSnackBar(
                                  //SnackBar(content: Text('Processing Data')));

                                  // context.read<AuthenticationService>().signup(
                                  // email: emailController.text.trim(),
                                  // password: passwordController.text.trim(), );
                                  // }
                                })
                            //child: Text(
                            //  'Sign Up'.toUpperCase(),
                            // style: TextStyle(
                            //   color: Colors.white, fontWeight: FontWeight.bold),
                            // ),
                            ),
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Have an account ?"),
                    Text(
                      "Login",
                      style: TextStyle(color: Color(0xff6bceff)),
                    ),
                  ],
                ),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(
                    context,
                    '/login',
                  );
                },
              ),
            ],
          ))
        ])));
  }
}
