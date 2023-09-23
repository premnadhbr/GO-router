// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  final String username;
  final String userid;
  

  const Profile({
    Key? key,
    required this.username,
    required this.userid,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
            child: Center(
              child: Text('Home'),
            ),
          ),
          Text(username),
          Text(userid),
        ],
      ),
    );
  }
}
