import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: ("Calculator"),
    home: SIForm(),
    theme: ThemeData(
      primaryColor: Colors.red,
      buttonColor: Colors.red,
      accentColor: Colors.redAccent,
    ),
  ));
}

class SIForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SIFormState();
  }
}

class _SIFormState extends State<SIForm> {
  String total;

  String _total = "0";
  int num1 = 0;
  int num2 = 0;
  String operand = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text("Calculator"),
        centerTitle: true,
      ),
      body: Form(
          child: ListView(
        children: <Widget>[
          Container(
              child: Column(children: <Widget>[
            Align(
              alignment: Alignment.topRight,
              child: Text(
                total,
                textDirection: TextDirection.rtl,
                textScaleFactor: 2.0,
              ),
            ),

            Divider(height: 100),

            Row(
              children: <Widget>[
                Padding(
                    padding: EdgeInsets.all(5.0),
                    child: RaisedButton(
                      // shape: CircleBorder(),
                      onPressed: () {
                        setState(() {
                          buttonPressed("9");
                        });
                      },
                      child: Text("9"),
                      color: Colors.yellow,
                    )),
                Padding(
                    padding: EdgeInsets.all(5.0),
                    child: RaisedButton(
                      // shape: CircleBorder(),
                      onPressed: () {
                        setState(() {
                          buttonPressed("8");
                        });
                      },
                      child: Text("8"),
                    )),
                Padding(
                    padding: EdgeInsets.all(5.0),
                    child: RaisedButton(
                      color: Colors.yellow,
                      onPressed: () {
                        setState(() {
                          buttonPressed("7");
                        });
                      },
                      // shape: CircleBorder(),
                      child: Text("7"),
                    )),
                Padding(
                    padding: EdgeInsets.all(5.0),
                    child: RaisedButton(
                      onPressed: () {
                        setState(() {
                          buttonPressed("+");
                        });
                      },
                      // shape: CircleBorder(),
                      child: Text("+"),
                    )),
              ],
            ), //End of 7 8 9 row
            Row(
              children: <Widget>[
                //beginning of 546 row
                Padding(
                    padding: EdgeInsets.all(5.0),
                    child: RaisedButton(
                      onPressed: () {
                        setState(() {
                          buttonPressed("6");
                        });
                      },
                      // shape: CircleBorder(),
                      child: Text("6"),
                    )),
                Padding(
                    padding: EdgeInsets.all(5.0),
                    child: RaisedButton(
                      onPressed: () {
                        setState(() {
                          buttonPressed("5");
                        });
                      },
                      // shape: CircleBorder(),
                      color: Colors.yellow,
                      child: Text("5"),
                    )),
                Padding(
                    padding: EdgeInsets.all(5.0),
                    child: RaisedButton(
                      onPressed: () {
                        setState(() {
                          buttonPressed("4");
                        });
                      },
                      // shape: CircleBorder(),
                      child: Text("4"),
                    )),
                Padding(
                    padding: EdgeInsets.all(5.0),
                    child: RaisedButton(
                      onPressed: () {
                        setState(() {
                          buttonPressed("-");
                        });
                      },
                      color: Colors.yellow,
                      // shape: CircleBorder(),
                      child: Text("-"),
                    ))
              ],
            ), //end of 546 row
            Row(
              children: <Widget>[
                //beginning of 123 row
                Padding(
                    padding: EdgeInsets.all(5.0),
                    child: RaisedButton(
                      // shape: CircleBorder(),
                      onPressed: () {
                        setState(() {
                          buttonPressed("3");
                        });
                      },
                      child: Text("3"),
                      color: Colors.yellow,
                    )),
                Padding(
                    padding: EdgeInsets.all(5.0),
                    child: RaisedButton(
                      onPressed: () {
                        setState(() {
                          buttonPressed("2");
                        });
                      },
                      // shape: CircleBorder(),
                      child: Text("2"),
                    )),
                Padding(
                    padding: EdgeInsets.all(5.0),
                    child: RaisedButton(
                      onPressed: () {
                        setState(() {
                          buttonPressed("1");
                        });
                      },
                      // shape: CircleBorder(),
                      color: Colors.yellow,
                      child: Text("1"),
                    )),
                Padding(
                    padding: EdgeInsets.all(5.0),
                    child: RaisedButton(
                      onPressed: () {
                        setState(() {
                          buttonPressed("=");
                        });
                      },
                      // shape: CircleBorder(),

                      child: Text("="),
                    )),
              ],
            ),
            // Center(
            //   alignment: Alignment.centerRight,
            //     width: 100.0,
            //     height: 200.0,
            //     child:  Text(total, textScaleFactor: 2.0,textDirection: TextDirection.rtl,),
            //            ),

            Center(
                child: Padding(
                    padding: EdgeInsets.all(1.0),
                    child: RaisedButton(
                      onPressed: () {
                        setState(() {
                          buttonPressed("Reset");
                        });
                      },
                      child: Text(
                        "Reset",
                      ),
                    )))
          ]))
        ],
      )),
    );
  }

  buttonPressed(String buttonText) {
    if (buttonText == "Reset") {
      total = "0";
      num1 = 0;
      num2 = 0;
      operand = '';
    } else if (buttonText == '+' || buttonText == "-") {
      num1 = int.parse(total);
      total = 0.toString();
      operand = buttonText;
    } else if (buttonText == '=') {
      num2 = int.parse(total);
      if (operand == '+') {
        total = (num1 + num2).toString();
      } else if (operand == '-') {
        total = (num1 - num2).toString();
        if (int.parse(total) < 0) {
          total = 0.toString();
        }
        num1 = 0;
        num2 = 0;
        operand = "";
      }
    } else {
      total = total + buttonText;
      total = int.parse(total).toStringAsFixed(0);
    }
  }
}
