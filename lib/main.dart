import 'package:flutter/material.dart';
import 'dataSource.dart';

String appName = "Simple Note";
void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: HomeApp()));
}

// C:\Users\[username]\AppData\Roaming\Code\User > keybindings.json

class HomeApp extends StatelessWidget {
  HomeApp({Key? key}) : super(key: key);

  final List<String> entries = <String>['A', 'B', 'C'];
  final List<int> colorCodes = <int>[600, 500, 100];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarDef(appName),
      body: ListView.builder(
        itemCount: dreamCard.length,
        itemBuilder: (BuildContext context, int index) {
          final cardItem = dreamCard[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return dreamCardDetailsScreen(cardItem);
              }));
            },
            child: Card(
              color: Color.fromARGB(255, 233, 233, 233),
              child: Column(children: <Widget>[
                Image.asset(
                  cardItem.imageUrl,
                  height: 300,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                // Image(
                //   image: NetworkImage('assets/images/img$index.jpg'),
                //   fit: BoxFit.fill,
                // ),
                Container(
                  child: Text("${cardItem.heading}",
                      style: TextStyle(
                        height: 3,
                      )),
                ),
              ]),
            ),
          );
        },
      ),
    );
  }
}

class dreamCardDetailsScreen extends StatelessWidget {
  var cardItem;
  dreamCardDetailsScreen(this.cardItem);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: appBarDef(cardItem.heading),
        body: ListView.builder(
            itemCount: cardItem.toDos.length,
            itemBuilder: (BuildContext context, int index2) {
              return Card(
                child: Column(children: [
                  Text("${cardItem.toDos[index2].action}"),
                  Text("${cardItem.toDos[index2].frequency}")
                ]),
              );
            }),
      ),
    );
  }
}

// class dreamCardDetailsScreen extends StatefulWidget {
//   var cardItem;
//   dreamCardDetailsScreen(this.cardItem);

//   @override
//   State<dreamCardDetailsScreen> createState() => _dreamCardDetailsScreenState();
// }

// class _dreamCardDetailsScreenState extends State<dreamCardDetailsScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(appBar: AppBar(title: Text("${cardItem.heading}"),)),
//     );
//   }
// }

appBarDef(heading) {
  return AppBar(
    title: Text("$heading"),
    centerTitle: true,
    backgroundColor: Colors.grey[850]!.withOpacity(1.0),
    elevation: 0.0,
  );
}
