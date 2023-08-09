import 'package:WhatsAppX/styles/colors.dart';
import 'package:WhatsAppX/util/constants/icons_data.dart';
import 'package:flutter/material.dart';

class UserChatTextField extends StatelessWidget {
  final Function()? onTap;

  const UserChatTextField({required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      color: backgroundColor,
      child: Row(
        children: <Widget>[
          CustomIcons(color: lightWhite).smile,
          SizedBox(
            width: 12,
          ),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                  hintText: 'Type your message',
                  border: InputBorder.none,
                  hintStyle: TextStyle(color: lightWhite, fontSize: 14)),
            ),
          ),
          IconButton(
              onPressed: onTap, icon: CustomIcons(color: lightWhite).attach),
          IconButton(
            onPressed: () {},
            icon: CustomIcons(color: lightWhite).cameraIcon,
          ),
          SizedBox(
            width: 8,
          ),
          Container(
              height: 38,
              width: 38,
              decoration: BoxDecoration(
                  color: primaryColor, borderRadius: BorderRadius.circular(19)),
              child: IconButton(
                  onPressed: () {},
                  icon: CustomIcons(color: whiteColor).microPhone))
        ],
      ),
    );
  }
}
