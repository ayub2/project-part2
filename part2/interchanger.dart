import 'package:flutter/material.dart';
import 'package:secondproject/Grid.dart';
import 'package:secondproject/firstGrid.dart';
import 'package:secondproject/secondGrid.dart';

class InterchangerClass extends StatefulWidget {
  _InterchangerClassState createState() => _InterchangerClassState();
}

class _InterchangerClassState extends State<InterchangerClass> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: DefaultTabController(
          length: 3,
          child: Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              backgroundColor: Colors.grey,
              bottom: TabBar(
                tabs: [
                  Tab(
                    text: " ALL",
                  ),
                  Tab(text: " Kitchen Area"),
                  Tab(text: " Living Room"),
                ],
              ),
            ),
            body: TabBarView(
              children: [
                Container(
                  child: GridClass(),
                ),
                Container(
                  child: GridClassSecond(),
                ),
                Container(
                  child: GridClassThird(),
                ),
              ],
            ),
          ),
        ));
  }
}