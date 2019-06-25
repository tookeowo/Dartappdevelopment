import 'package:flutter/material.dart';

void main() {
  runApp(Bolbol());
}
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
        body: Material(
            color: Colors.blueAccent,
            child: Center(
                child: Text(
              "This is the beginning",
              textDirection: TextDirection.ltr,
              style: TextStyle(color: Colors.white, fontSize: 40.0),
            )))),
  );
  }
}