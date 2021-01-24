import 'package:WhatsAppX/styles/colors.dart';
import 'package:flutter/material.dart';

class ListTitle extends StatelessWidget {
  final String text;
  const ListTitle({this.text});

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: TextStyle(
            fontSize: 16, color: whiteColor, fontWeight: FontWeight.w600));
  }
}
