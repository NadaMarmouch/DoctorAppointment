import 'package:provider/provider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:doctor_appointment/model/validation.dart';
import 'package:firebase_core/firebase_core.dart';


class LoginValidator extends ChangeNotifier {
 final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  //LoginValidator(this._firebaseAuth);

  ValidationItem _username = ValidationItem('',"");
  ValidationItem _password = ValidationItem('','');
 

  //Getters
  ValidationItem get username => _username;
  ValidationItem get password => _password;

  //ValidationItem get dob => _dob;
  bool get isValid {
    if (_password.value != null && _username.value != null ){
      return true;
    } else {
      return false;
    }
  }

  //Setters
  void changeUserName(String value){
    if (value.length >= 3){
      _username=ValidationItem(value,'');
    } else {
      _username=ValidationItem('', "Must be at least 3 characters");
    }
    notifyListeners();
  }

    void changepassword(String value){
    if (value.length >= 7){
      _password=ValidationItem(value,'');
    } else {
      _password=ValidationItem('', "Your Password is weak ");
    }
    notifyListeners();
  }

  

  
  void submitData(){
    print("FirstName: ${username.value}, password: ${password.value}");
  }


Future<String?> signin({required String email, required String password}) async{
    try{
      await _firebaseAuth.signInWithEmailAndPassword(email: email, password: password);
      return "signed in";
    }
     on FirebaseAuthException catch(e){
     
        print(e.message);
        return e.message;
      }
  }
}