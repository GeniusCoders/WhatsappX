import 'package:WhatsAppX/styles/colors.dart';
import 'package:flutter/material.dart';

class UserStatusText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black.withOpacity(.2),
      width: double.infinity,
      alignment: Alignment.center,
      padding: EdgeInsets.all(14),
      child: Text(
        'My New Bike',
        style: TextStyle(
            fontSize: 16, color: whiteColor, fontWeight: FontWeight.w600),
      ),
    );
  }
}
