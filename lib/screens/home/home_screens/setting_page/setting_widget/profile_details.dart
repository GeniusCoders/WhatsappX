import 'package:WhatsAppX/styles/colors.dart';
import 'package:WhatsAppX/util/constants/profile_images.dart';
import 'package:flutter/material.dart';

class ProfileDetails extends StatelessWidget {
  final String name;
  final String status;

  const ProfileDetails({this.name, this.status});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: NetworkImage(user11),
          radius: 30,
        ),
        title: Text(
          name,
          style: TextStyle(color: whiteColor, fontWeight: FontWeight.w600),
        ),
        subtitle: Text(
          status,
          style: TextStyle(fontSize: 16, color: darkGrey),
        ),
      ),
    );
  }
}
