
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthenticationService{
  final FirebaseAuth _firebaseAuth;

  AuthenticationService(this._firebaseAuth);
  Stream<User?> get authStateChanges => _firebaseAuth.idTokenChanges();

  Future<String?> signup({required String email, required String password}) async{
    try{
      await _firebaseAuth.createUserWithEmailAndPassword(email: email, password: password);
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
      await _firebaseAuth.signInWithEmailAndPassword(email: email, password: password);
      return "signed in";
    }
     on FirebaseAuthException catch(e){
      if(e.code=='weak password'){
        print(e.message);
        return e.message;
      }}
  }
   Future<void> signout() async{
      await _firebaseAuth.signOut();
   }
}