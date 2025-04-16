import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class LocationScreen extends StatelessWidget {
  const LocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Position simulée de la trottinette (latitude, longitude)
    final LatLng simulatedLocation = LatLng(36.8065, 10.1815); // Tunis par exemple

    return Scaffold(
      appBar: AppBar(
        title: const Text('Localisation de la trottinette'),
      ),
      body: FlutterMap(
        options: MapOptions(
          center: simulatedLocation,
          zoom: 15.0,
        ),
        children: [
          TileLayer(
            urlTemplate: "https://tile.openstreetmap.org/{z}/{x}/{y}.png",
            userAgentPackageName: 'com.example.app',
          ),
          MarkerLayer(
            markers: [
              Marker(
                point: simulatedLocation,
                width: 60,
                height: 60,
                child: const Icon(Icons.location_on, color: Colors.red, size: 40),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

