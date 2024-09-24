import 'package:flutter/material.dart';
import 'location_screen.dart';
import '../models/member.dart';

class AttendanceScreen extends StatelessWidget {
  final List<Member> members = [
    Member(id: '1', name: 'Member 1'),
    Member(id: '2', name: 'Member 2'),
    Member(id: '3', name: 'Member 3'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Attendance')),
      body: ListView.builder(
        itemCount: members.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(members[index].name),
            trailing: IconButton(
              icon: Icon(Icons.location_on),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LocationScreen(member: members[index]),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
