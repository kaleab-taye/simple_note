import 'package:flutter/material.dart';
import 'dataSource.dart';

String appName = "Simple Note";
_primaryColor(){ return Colors.grey[850];}
void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: HomeApp()));
}

// C:\Users\[username]\AppData\Roaming\Code\User > keybindings.json

class HomeApp extends StatelessWidget {
  HomeApp({Key? key}) : super(key: key);

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
                        height: 2,
                        fontSize: 20,
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

class dreamCardDetailsScreen extends StatefulWidget {
  var cardItem;
  dreamCardDetailsScreen(this.cardItem);

  @override
  State<dreamCardDetailsScreen> createState() => _dreamCardDetailsScreenState();
}

class _dreamCardDetailsScreenState extends State<dreamCardDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: appBarDef(widget.cardItem.heading),
        body: ListView.builder(
            itemCount: widget.cardItem.toDos.length,
            itemBuilder: (BuildContext context, int index2) {
              return Card(
                child: Column(children: [
                  Text("${widget.cardItem.toDos[index2].action}"),
                  Text("${widget.cardItem.toDos[index2].frequency}"),
                  Text(
                      "for how long${widget.cardItem.toDos[index2].forHowLong}"),
                  Slider(
                      min: 1,
                      max: 20,
                      divisions: 19,
                      value: widget.cardItem.toDos[index2].forHowLong,
                      onChanged: (double newValue) {
                        setState(() {
                          widget.cardItem.toDos[index2].forHowLong = newValue;
                        });
                      })
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
    backgroundColor: _primaryColor(),
    elevation: 0.0,
  );
}
