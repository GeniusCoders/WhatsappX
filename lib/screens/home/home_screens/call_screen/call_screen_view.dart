import 'package:WhatsAppX/styles/colors.dart';
import 'package:WhatsAppX/util/constants/profile_images.dart';
import 'package:flutter/material.dart';

class CallScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Image.network(
            user11,
            height: 400,
            fit: BoxFit.fill,
          ),
          SizedBox(height: 16),
          Text(
            'Nilesh Kadam',
            style: TextStyle(
                fontSize: 28, color: whiteColor, fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}
