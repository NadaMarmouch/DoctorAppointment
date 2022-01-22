import 'package:flutter/material.dart';
import 'package:doctor_appointment/model/validation.dart';
import 'package:provider/provider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


class SignUpValidator extends ChangeNotifier {

FirebaseFirestore firestore = FirebaseFirestore.instance;

  ValidationItem _username = ValidationItem('',"");
  ValidationItem _password = ValidationItem('','');
  ValidationItem _email = ValidationItem('','');
  ValidationItem _phonenumber = ValidationItem('','');

  //Getters
  ValidationItem get username => _username;
  ValidationItem get email => _email;
  ValidationItem get password => _password;
  ValidationItem get phonenumber => _phonenumber;

  Future<void> addUser(String username,String email,String password, String phonenumber) {
    // Call the user's CollectionReference to add a new user
    CollectionReference collection =
        FirebaseFirestore.instance.collection('users');

    return collection
        .add({
          'username': username, // John Doe
          'emai': email, // John Doe
          'password':password, // John Doe
          'phonenumber': phonenumber, // John Doe
        })
        .then((value) => print("Recorded"))
        .catchError((error) => print("Failed to add record: $error"));
     notifyListeners();
  }
  


  //ValidationItem get dob => _dob;
  // bool get isValid {
  //   if (_password.value != null && _username.value != null && _phonenumber.value != null&& _email.value != null){
  //     return true;
  //   } else {
  //     return false;
  //   }
  // }

  // //Setters
  // void changeUserName(String value){
  //   if (value.length >= 3){
  //     _username=ValidationItem(value,'');
  //   } else {
  //     _username=ValidationItem('', "Must be at least 3 characters");
  //   }
  //   notifyListeners();
  // }

  // void changeEmail(String value){
  //   if (value.length >= 10){
  //     _email=ValidationItem(value,'');
  //   } else {
  //     _email=ValidationItem('', "you email must contain @gmail.com");
  //   }
  //   notifyListeners();
  // }

  //   void changepassword(String value){
  //   if (value.length >= 7){
  //     _password=ValidationItem(value,'');
  //   } else {
  //     _password=ValidationItem('', "Your Password is weak ");
  //   }
  //   notifyListeners();
  // }
  
  //  void changephonenumber(String value){
  //   if (value.length >= 11){
  //     _phonenumber=ValidationItem(value,'');
  //   } else {
  //     _phonenumber=ValidationItem('', "You Enter a Wrong phonenumber ");
  //   }
  //   notifyListeners();
  // }

  
  // void submitData(){
  //   print("FirstName: ${username.value}, password: ${password.value}, phonenumber: ${phonenumber.value}, email: ${email.value}");
  // }


}