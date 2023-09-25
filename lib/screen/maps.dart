import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  // latitude - 위도, logitude - 경도
  static final LatLng compnayLatLng = LatLng(
    37.5233273,
    126.921252,
  );
  static final CameraPosition initialPosition = CameraPosition(
    target: compnayLatLng,
    zoom: 15,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        initialCameraPosition: initialPosition,
      ),
    );
  }
}
