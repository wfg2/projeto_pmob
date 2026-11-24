import 'package:flutter/material.dart';
import 'package:projeto_pmob/domain/post_receita.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class DetalhesLocalPage extends StatefulWidget {
  PostReceita postReceita;
  LatLng location;
  Set<Marker> markers;

  DetalhesLocalPage({super.key, required this.postReceita, required this.location, required this.markers});

  @override
  State<DetalhesLocalPage> createState() => _DetalhesLocalPageState();
}

class _DetalhesLocalPageState extends State<DetalhesLocalPage> {
  PostReceita get postReceita => widget.postReceita;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: ListView(
        children: [
          Stack(
            children: [
              // Image.network(propriedade.urlImagem),
              Container(
                height: 400,
                child: GoogleMap(
                  mapType: MapType.normal,
                  markers: widget.markers,
                  initialCameraPosition: CameraPosition(target: widget.location, zoom: 14),
                ),
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
          ),
          SizedBox(height: 24),
          Column(
            children: [
              Text(
                postReceita.local,
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Montserrat-Regular',
                ),
              ),
              SizedBox(height: 8),
              Text(
                'Apartamento na Holanda',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black54,
                  fontFamily: 'Montserrat-Regular',
                ),
              ),
              Text(
                '2 camas e banheiro privativo',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black54,
                  fontFamily: 'Montserrat-Regular',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}