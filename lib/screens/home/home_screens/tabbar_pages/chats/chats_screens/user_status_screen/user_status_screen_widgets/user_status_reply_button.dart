import 'package:WhatsAppX/styles/colors.dart';
import 'package:WhatsAppX/util/constants/icons_data.dart';
import 'package:flutter/material.dart';

class UserStatusReplyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 18),
      child: Column(
        children: <Widget>[
          CustomIcons(color: whiteColor).arrowUp,
          SizedBox(
            height: 6,
          ),
          Text(
            'REPLY',
            style: TextStyle(fontSize: 14, color: whiteColor),
          )
        ],
      ),
    );
  }
}
