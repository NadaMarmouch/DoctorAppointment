import 'package:flutter/material.dart';

Widget doctor_name(String img, String Name,String categotry,String fees, String location, double width){
  return Center(
    child:   Container(
       width: width,
        decoration: BoxDecoration(
       
         color: Color(0xFF00abff),
          borderRadius: BorderRadius.circular(20)
        ),
        padding: EdgeInsets.symmetric(horizontal:30,
        vertical: 18),
        child: Row(
          children: <Widget>[
            Image.asset(img, height: 40,),
       SizedBox(width: 10,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(Name, style: TextStyle(
                  color: Color(0xFF0077c6),
                  fontSize: 14
                ),),
                SizedBox(height: 2,),
                Text(categotry, style: TextStyle(
                  fontSize: 14
                ),)
              ],
            ),
              Container(
              padding: EdgeInsets.symmetric(horizontal: 15,
              vertical: 5),
              margin: EdgeInsets.symmetric(horizontal: 25.0),
              decoration: BoxDecoration(
                color: Color(0xFF0077c6),
                borderRadius: BorderRadius.circular(10)
              ),
              child: Text(fees, style: TextStyle(
                
                 color: Colors.white,
                fontSize: 13,
                fontWeight: FontWeight.w500
          ),   ),),
             ],
        ),
   ) ); 
      
}
