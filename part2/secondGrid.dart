import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class GridClassThird extends StatefulWidget {
  @override
  _GridClassThirdState createState() => _GridClassThirdState();
}


var textIndex3 = 0;
var textIndex4 = 0;

bool value3 = true;
bool value4 = true;

class _GridClassThirdState extends State<GridClassThird> {
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
