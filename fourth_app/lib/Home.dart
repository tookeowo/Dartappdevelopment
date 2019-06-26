import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: getListView(),);
  }
 
Widget getListView(){
  var listView = ListView(children: <Widget>[
    ListTile(leading: Icon(Icons.restaurant_menu),title: Text("Denny's"),subtitle: Text("Taste so good"),trailing: Icon(Icons.sentiment_satisfied),)
    ]
  );
  return listView;
}
}