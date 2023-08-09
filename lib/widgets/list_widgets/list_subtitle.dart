import 'package:WhatsAppX/styles/colors.dart';
import 'package:flutter/material.dart';

class ListSubtitle extends StatelessWidget {
  final String text;

  const ListSubtitle({required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(fontWeight: FontWeight.w500, color: lightWhite),
    );
  }
}
