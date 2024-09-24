import 'package:flutter/material.dart';

class RouteDetailsScreen extends StatelessWidget {
  final String startLocation;
  final String stopLocation;
  final double totalKm;
  final String totalDuration;

  RouteDetailsScreen({
    required this.startLocation,
    required this.stopLocation,
    required this.totalKm,
    required this.totalDuration,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Route Details')),
      body: Column(
        children: [
          ListTile(title: Text('Start Location: $startLocation')),
          ListTile(title: Text('Stop Location: $stopLocation')),
          ListTile(title: Text('Total KMs: $totalKm')),
          ListTile(title: Text('Total Duration: $totalDuration')),
          // Add Google Map view for route here
        ],
      ),
    );
  }
}
