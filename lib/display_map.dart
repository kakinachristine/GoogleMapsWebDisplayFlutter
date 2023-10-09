// THIS  CODE DISPLAYS THE MAP FOR A USER WHICH USES THE display_map.html

import 'package:flutter/material.dart';
import 'package:google_maps/google_maps.dart' as html;
import 'package:google_maps_flutter_web/google_maps_flutter_web.dart';
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
  void initState() {
    super.initState();

    // Initialize the map when the widget is first created
    initializeMap();
  }

  void initializeMap() {
    // Your map initialization code here

    // Create a LatLng object with your desired initial coordinates
    var initialLatLng = html.LatLng(37.7749, -122.4194);

    // Create a map options object
    var mapOptions = html.MapOptions()
      ..zoom = 13
      ..center = initialLatLng; // Set initial map coordinates

    // Create a new Google Map instance and attach it to the "map" div
    var map = html.GMap(html.querySelector('#map') as html.HtmlElement, mapOptions);

    // You can add markers, event listeners, and other map functionality here
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 500, // Set the width of the map container
        height: 500, // Set the height of the map container
        child: HtmlElementView(viewType: 'map'), // Embed the map into the Flutter app
      ),
    );
  }
}
