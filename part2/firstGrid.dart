import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class GridClassSecond extends StatefulWidget {
  @override
  _GridClassSecondState createState() => _GridClassSecondState();
}

var textIndex1 = 0;
var textIndex2 = 0;

bool value = true;
bool value2 = true;

class _GridClassSecondState extends State<GridClassSecond> {
  void iconPressed1() {
    setState(() {
      textIndex1 = textIndex1 + 1;
      value = false;
      print('Icon pressed $textIndex1');
    });
  }

  void iconPressed2() {
    setState(() {
      textIndex2 = textIndex2 + 1;
      value2 = false;
      print('Icon pressed $textIndex2');
    });
  }


  var actionsTaken = [' OFF ', 'ON'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisCount: 2,
        children: [
          // Fan in the grid
          Container(
            child: Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                            child: Image(
                              image: AssetImage(value
                                  ? 'pics/fan off.png'
                                  : 'pics/fan on.png'),
                            ),
                          ),
                          Container(
                            height: 100,
                            width: 92,
                            child: TextButton(
                              child: Icon(Icons.power_settings_new, size: 40),
                              onPressed: iconPressed1,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Container(
                              child: Text(
                                " FAN",
                                style: TextStyle(fontSize: 30),
                                textAlign: TextAlign.left,
                              )),
                          Container(
                            padding: EdgeInsets.all(10),
                            child: Text(
                              actionsTaken.elementAt(textIndex1),
                              style: TextStyle(fontSize: 30),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                )),
          ),

          // microwave in the grid
          Container(
            child: Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                            child: Image(
                              image: AssetImage(value2
                                  ? 'pics/microwave off.jpg'
                                  : 'pics/microwave on.jpg'),
                            ),
                          ),
                          Container(
                            height: 100,
                            width: 92,
                            child: TextButton(
                              child: Icon(Icons.power_settings_new, size: 40),
                              onPressed: iconPressed2,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Container(
                              child: Text(
                                " MICROWAVE",
                                style: TextStyle(fontSize: 30),
                                textAlign: TextAlign.left,
                              )),
                          Container(
                            padding: EdgeInsets.all(10),
                            child: Text(
                              actionsTaken.elementAt(textIndex2),
                              style: TextStyle(fontSize: 30),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                )),
          ),
                        ],
                      ),
                    );
  }
}
