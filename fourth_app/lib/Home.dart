import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: //diagram of app goes with the width and height specified because container is a child widget to center
            Container(
                alignment: Alignment.center,
                //width: 400.0,
                padding: EdgeInsets.all(20.0),
                margin: EdgeInsets.only(left: 15.0, right: 20.0),
                //height: 200.0,
                color: Colors.cyanAccent,
                child: Column(children: <Widget>[
                  Row(children: <Widget>[
                    Expanded(
                        child: Text(
                      "Doo doo",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 30.0,
                          color: Colors.red),
                    )),
                    Expanded(
                      child: Text(
                        "Do0000000 Do00000",
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 30.0,
                            color: Colors.black),
                      ),
                    ),
                  ]),
                  FlightImageAssert(),
                  FlightBookingbutton()
                ])));
  }
}

class FlightImageAssert extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('images/lagos.jpeg');
    Image image = Image(image: assetImage);
    return Container(
      child: image,
    );
  }
}

class FlightBookingbutton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: RaisedButton(
      color: Colors.pink,
      elevation: 6.0,
      child: Text("Press me"),
      onPressed: () {
        bookFlight(context);
      },
    ));
  }
}

void bookFlight(BuildContext context) {
  var alertDialog = AlertDialog(
    title: Text("button pushed"),
    content: Text("You just pressed me"),
  );
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return alertDialog;
      });
}
