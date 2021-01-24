import 'package:WhatsAppX/util/constants/icons_data.dart';
import 'package:flutter/material.dart';

class ListTrailing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          CustomIcons(
            size: 18,
          ).callIcon,
          CustomIcons(
            size: 18,
          ).videoIcon
        ],
      ),
    );
  }
}
