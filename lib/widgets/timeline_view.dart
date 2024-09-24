import 'package:flutter/material.dart';
import '../models/location.dart';

class TimelineView extends StatelessWidget {
  final List<Location> locations;

  TimelineView({required this.locations});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: locations.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text('Location: ${locations[index].address}'),
          subtitle: Text('Visited on: ${locations[index].timestamp}'),
        );
      },
    );
  }
}
