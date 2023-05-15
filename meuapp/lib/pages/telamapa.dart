import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class TelaMapa extends StatefulWidget {
  static var routeName = '/mapa';
  
  @override
  _TelaMapaState createState() => _TelaMapaState();
   
}

class _TelaMapaState extends State<TelaMapa> {
  late GoogleMapController mapController;

  final LatLng _center = const LatLng(45.5215623, -122.677433);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Mapa Simples'),
          backgroundColor: Colors.green[700],
        ),
        body: GoogleMap(
          onMapCreated: _onMapCreated,
          initialCameraPosition: CameraPosition(
            target: _center,
            zoom: 11.0),
        ),
        ),
    );
  }
  
}

