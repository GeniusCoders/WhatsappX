import 'package:WhatsAppX/styles/colors.dart';
import 'package:flutter/material.dart';

class UserStatusProgressBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 2,
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 14),
      padding: EdgeInsets.only(top: 16),
      decoration: BoxDecoration(
          color: primaryColor, borderRadius: BorderRadius.circular(6)),
    );
  }
}
