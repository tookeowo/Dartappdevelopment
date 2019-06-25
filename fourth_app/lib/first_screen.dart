import 'package:flutter/material.dart';
import 'dart:math';


class FirstScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Material(
            color: Colors.blueAccent,
            child: Center(
                child: Text(generateLuckyNumber()
              ,
              textDirection: TextDirection.ltr,
              style: TextStyle(color: Colors.white, fontSize: 40.0),
            )
            )
            );
  }

  String generateLuckyNumber(){
  var random = Random();
  int luckynumber = random.nextInt(20);
  return "Your lucky number is $luckynumber";
}
}