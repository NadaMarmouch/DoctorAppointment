
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthenticationService extends ChangeNotifier{
  final FirebaseAuth _auth = FirebaseAuth.instance;

  AuthenticationService();
  Stream<User?> get authStateChanges => _auth.idTokenChanges();

  Future signup({required String email, required String password}) async{
    try{
      print (email);
      await _auth.createUserWithEmailAndPassword(email: email, password: password);
      
      return "signed up";

    }
    on FirebaseAuthException catch(e){
      if(e.code=='weak password'){
        print(e.message);
        return e.message;
      }
      else if(e.code=='email already in use'){
        print(e.message);
        return e.message;
      }
      else{
        print(e.message);
        return e.message;
      }
    }
  }
  Future<String?> signin({required String email, required String password}) async{
    try{
      await _auth.signInWithEmailAndPassword(email: email, password: password);
      return "signed in";
    }
     on FirebaseAuthException catch(e){
     
        print(e.message);
        return e.message;
      }
  }
   Future<void> signout() async{
      await _auth.signOut();
   }
}