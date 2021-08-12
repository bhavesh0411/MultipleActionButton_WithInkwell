import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String mywell = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Inkwell'),
        backgroundColor: Colors.pink,
        actions: <Widget>[
          Icon(
            Icons.waves,
            color: Colors.white,
          )
        ],
        leading: Icon(
          Icons.waves,
          color: Colors.white,
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            InkWell(
              onTap: () {
                setState(() {
                  mywell = 'Inkwell Tapped';
                });
              },
              onLongPress: () {
                setState(() {
                  mywell = 'Inkwell Long Pressed';
                });
              },
              onDoubleTap: () {
                setState(() {
                  mywell = 'Inkwell double Tap';
                });
              },
              onTapCancel: () {
                setState(() {
                  mywell = 'Inkwell Tap Cancel';
                });
              },
              child: Container(
                color: Colors.amber,
                width: 120,
                height: 70,
                child: Center(
                  child: Text(
                    'Inkwell',
                    textScaleFactor: 2,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                mywell,
                textScaleFactor: 2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
