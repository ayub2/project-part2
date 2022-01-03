import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class GridClass extends StatefulWidget {
  @override
  _GridClassState createState() => _GridClassState();
}

var textIndex1 = 0;
var textIndex2 = 0;
var textIndex3 = 0;
var textIndex4 = 0;

bool value = true;
bool value2 = true;
bool value3 = true;
bool value4 = true;

class _GridClassState extends State<GridClass> {
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

  void iconPressed3() {
    setState(() {
      textIndex3 = textIndex3 + 1;
      value3 = false;
      print('Icon pressed $textIndex3');
    });
  }

  void iconPressed4() {
    setState(() {
      textIndex4 = textIndex4 + 1;
      value4 = false;
      print('Icon pressed $textIndex4');
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

          // Speaker in the grid
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
                            padding: EdgeInsets.all(10),
                            child: Image(
                              image: AssetImage(value3
                                  ? 'pics/speaker off.jpg'
                                  : 'pics/speaker on.png'),
                            ),
                          ),
                          Container(
                            height: 100,
                            width: 92,
                            child: TextButton(
                              child: Icon(Icons.power_settings_new, size: 40),
                              onPressed: (iconPressed3),
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
                                " SPEAKER",
                                style: TextStyle(fontSize: 30),
                                textAlign: TextAlign.left,
                              )),
                          Container(
                            padding: EdgeInsets.all(10),
                            child: Text(
                              actionsTaken.elementAt(textIndex3),
                              style: TextStyle(fontSize: 30),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                )),
          ),

          // TV in the grid
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
                            padding: EdgeInsets.all(10),
                            child: Image(
                              image: AssetImage(value4
                                  ? 'assets/tv OFF.png'
                                  : 'assets/tvon.png'),
                            ),
                          ),
                          Container(
                            height: 100,
                            width: 92,
                            child: TextButton(
                              child: Icon(Icons.power_settings_new, size: 40),
                              onPressed: iconPressed4,
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
                                " TV",
                                style: TextStyle(fontSize: 30),
                                textAlign: TextAlign.left,
                              )),
                          Container(
                            padding: EdgeInsets.all(10),
                            child: Text(
                              actionsTaken.elementAt(textIndex4),
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
