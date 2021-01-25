import 'package:WhatsAppX/styles/colors.dart';
import 'package:flutter/material.dart';

class AttachmentView extends StatelessWidget {
  final String image;
  final String title;

  const AttachmentView({@required this.image, @required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      child: Column(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('assets/$image'),
            radius: 26,
          ),
          SizedBox(height: 10),
          Text(
            title,
            style: TextStyle(color: whiteColor),
          )
        ],
      ),
    );
  }
}
