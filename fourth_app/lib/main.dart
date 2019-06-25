import 'package:first_app/first_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(Bolbol());

class Bolbol extends StatelessWidget{
@override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    title: "Part 1",
    home: Scaffold(
        appBar: AppBar(
          title: Text(
            "App 1",
            style: TextStyle(color: Colors.blueGrey),
          ),
          backgroundColor: Colors.white,
        ),
        body: FirstScreen()
            ),
  );
  }


}