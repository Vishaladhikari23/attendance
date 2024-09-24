import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../models/member.dart';

class LocationScreen extends StatefulWidget {
  final Member member;

  LocationScreen({required this.member});

  @override
  _LocationScreenState createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  late GoogleMapController mapController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('${widget.member.name} - Location')),
      body: Column(
        children: [
          Container(
            height: 300,
            child: GoogleMap(
              onMapCreated: (GoogleMapController controller) {
                mapController = controller;
                // Set initial camera position, this can be updated with actual data
                mapController.moveCamera(CameraUpdate.newLatLng(LatLng(37.7749, -122.4194))); // Example
              },
              initialCameraPosition: CameraPosition(
                target: LatLng(37.7749, -122.4194),
                zoom: 10,
              ),
            ),
          ),
          // Add timeline view of visited locations here
        ],
      ),
    );
  }
}
