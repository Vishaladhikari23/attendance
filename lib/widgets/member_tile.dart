import 'package:flutter/material.dart';
import '../models/member.dart';

class MemberTile extends StatelessWidget {
  final Member member;

  MemberTile({required this.member});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(member.name),
      trailing: IconButton(
        icon: Icon(Icons.location_on),
        onPressed: () {
          // Handle location check
        },
      ),
    );
  }
}
