import 'package:WhatsAppX/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'list_title.dart';

class ListHeadNode extends StatelessWidget {
  final IconData icon;
  final String title;
  final Widget trailingWidget;

  const ListHeadNode(
      {required this.icon, required this.title, required this.trailingWidget});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: CircleAvatar(
          radius: 24,
          backgroundColor: primaryColor,
          child: FaIcon(
            icon,
            size: 18,
            color: whiteColor,
          ),
        ),
        title: ListTitle(
          text: title,
        ),
        trailing: trailingWidget);
  }
}
