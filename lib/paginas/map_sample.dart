import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../domain/meals.dart';

class MapSample extends StatefulWidget {
  final LatLng location;
  Set<Marker> markers;
  Meals meals;

  MapSample({super.key, required this.location, required this.markers, required this.meals});

  @override
  State<MapSample> createState() => MapSampleState();
}

class MapSampleState extends State<MapSample> {
  final Completer<GoogleMapController> _controller = Completer<GoogleMapController>();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          toolbarHeight: 30,
          backgroundColor: Color(0xFF1800ad),
          flexibleSpace: SvgPicture.asset('fontes/appbararrow.svg', fit: BoxFit.cover),
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back_ios, color: Colors.transparent, size: 50)
          ),
      ),
      body: GoogleMap(
        mapType: MapType.terrain,
        markers: widget.markers,
        initialCameraPosition: CameraPosition(target: widget.location, zoom: 6.5),
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
      )
    );


  }


}