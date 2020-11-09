// From https://medium.com/@meysam.mahfouzi/flutter-layout-challenge-squares-3d0bc4c78793


import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Stacked Squares"),
        ),
        body: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: Container(
                    height: 100,
                    color: Colors.red,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 100,
                    color: Colors.orange,
                  ),
                )
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 200,
                    color: Colors.green,
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: Container(
                              height: 100,
                              color: Colors.purple,
                            ),
                          ),
                          Expanded(
                            child: Container(
                              height: 100,
                              color: Colors.orange,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 100,
                        color: Colors.blue,
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
