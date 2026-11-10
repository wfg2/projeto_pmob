import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../domain/meals.dart';

class MapSample extends StatefulWidget {
  final LatLng location;
  Set<Marker> markers;

  MapSample({super.key, required this.location, required this.markers});

  @override
  State<MapSample> createState() => MapSampleState();
}

class MapSampleState extends State<MapSample> {
  final Completer<GoogleMapController> _controller = Completer<GoogleMapController>();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
            children: [
              GoogleMap(
                mapType: MapType.terrain,
                markers: widget.markers,
                initialCameraPosition: CameraPosition(target: widget.location, zoom: 6.5),
                onMapCreated: (GoogleMapController controller) {
                  _controller.complete(controller);
                },
              ),
              Positioned(
                left: 16,
                top: 16,
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back_ios, color: Colors.white, size: 32),
                ),
              ),
            ],
          )
    );


  }


}