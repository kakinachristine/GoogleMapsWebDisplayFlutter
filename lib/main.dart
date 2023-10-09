// THIS  CODE DISPLAYS THE SEARCH BAR FOR A USER WHICH USES THE index.html


import 'package:flutter/material.dart';
import 'package:universal_html/html.dart' as html;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Google Maps Web App'),
        ),
        body: MyMap(),
      ),
    );
  }
}

class MyMap extends StatefulWidget {
  @override
  _MyMapState createState() => _MyMapState();
}

class _MyMapState extends State<MyMap> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          HtmlElementView(viewType: 'map'), // Embed the map into the Flutter app
        ],
      ),
    );
  }
}
