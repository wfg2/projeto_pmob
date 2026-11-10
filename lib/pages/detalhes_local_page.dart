import 'package:flutter/cupertino.dart';

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class DetalhesLocalPage extends StatefulWidget {
  final double latitude;
  final double longitude;
  final String nomereceita;

  const DetalhesLocalPage({
    super.key,
    required this.latitude,
    required this.longitude,
    required this.nomereceita,
  });

  @override
  State<DetalhesLocalPage> createState() => _MapsPageState();
}

class _MapsPageState extends State<DetalhesLocalPage> {
  final Completer<GoogleMapController> _controller = Completer<GoogleMapController>();

  @override
  Widget build(BuildContext context) {
    final LatLng localizacao = LatLng(widget.latitude, widget.longitude);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Origem: ${widget.nomereceita}',
          style: const TextStyle(
            fontFamily: 'Montserrat',
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color(0xFF0a27eb),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: GoogleMap(
        mapType: MapType.normal,
        initialCameraPosition: CameraPosition(
          target: localizacao,
          zoom: 11,
        ),
        markers: {
          Marker(
            markerId: const MarkerId('origem_prato'),
            position: localizacao,
            infoWindow: InfoWindow(
              title: widget.nomereceita,
              snippet: 'País de Origem',
            ),
          ),
        },
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
      ),
    );
  }
}

