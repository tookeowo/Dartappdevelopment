import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: getListView2());
  }

//   Widget getListView() {
//     var listView = ListView(children: <Widget>[
//       ListTile(
//         leading: Icon(Icons.restaurant_menu),
//         title: Text("Denny's"),
//         subtitle: Text("Taste so good"),
//         trailing: Icon(Icons.sentiment_satisfied),
//       ),
//       ListTile(
//         leading: Icon(Icons.restaurant_menu),
//         title: Text("Denny's"),
//         subtitle: Text("Taste so good"),
//         trailing: Icon(Icons.sentiment_satisfied),
//       ),
//     ]);
//     return listView;
//   }
// }

List<String> getListElements() {
  var items = List<String>.generate(50, (anything) => "This is item $anything");
  return items;
}

Widget getListView2() {
  var listItems = getListElements();
  var listView = ListView.builder(itemBuilder: (context, index) {
    return ListTile(title: Text(listItems[index]),
    onTap: (){
      debugPrint('item $index was tapped');
    },);
  });
  return listView;
}
}