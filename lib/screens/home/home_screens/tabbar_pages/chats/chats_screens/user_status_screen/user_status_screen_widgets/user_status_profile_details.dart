import 'package:WhatsAppX/screens/home/home_screens/home_widgets/custom_avatar.dart';
import 'package:WhatsAppX/styles/colors.dart';
import 'package:WhatsAppX/util/constants/icons_data.dart';
import 'package:WhatsAppX/util/constants/profile_images.dart';
import 'package:flutter/material.dart';

class UserProfileDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 4, vertical: 2),
      child: Row(
        children: <Widget>[
          IconButton(
            icon: CustomIcons(color: whiteColor).backArrowIcon,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          CustomAvatar(
            imgUrl: user2,
            radius: 20,
            isShowBorderColor: true,
          ),
          SizedBox(
            width: 14,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                'Kevin',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: whiteColor),
              ),
              Text(
                'yestarday, 8:00pm',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: whiteColor),
              )
            ],
          )
        ],
      ),
    );
  }
}
