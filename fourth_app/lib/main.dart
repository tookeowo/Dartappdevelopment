import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Favour",
    home: FavoriteCity(),
  ));
}

class FavoriteCity extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FavoriteCityState();
  }
}

class FavoriteCityState extends State<FavoriteCity> {
  String namecity;
  var _currencies = ["naira", 'dollar'];

  var _itemselected = 'Select your currency';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("City app"),
      ),
      body: Container(
        margin: EdgeInsets.only(left: 15.0, right: 15.0),
        child: Column(
          children: <Widget>[
            TextField(
              onChanged: (String userInput) {
                setState(() {
                  namecity = userInput;
                });
              },
            ),
            DropdownButton<String>(
              items: _currencies.map((String item) {
                return DropdownMenuItem<String>(value: item, child: Text(item));
              }).toList(),
              onChanged: (String valueselected){
                setState(() {
                  this._itemselected=valueselected;
                });
              },
            ),

          Padding(
                padding: EdgeInsets.all(20.0),
                child: (Text("$_itemselected")))
          ]
          
        )
            
          
        ),
      );
    
  }
}
