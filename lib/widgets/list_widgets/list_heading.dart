import 'package:WhatsAppX/styles/colors.dart';
import 'package:flutter/material.dart';

class ListHeading extends StatelessWidget {
  final String text;
  final Color color;
  const ListHeading({required this.text, this.color = primaryColor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Text(text,
          style: TextStyle(color: color, fontWeight: FontWeight.w500)),
    );
  }
}
