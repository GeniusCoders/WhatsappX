import 'package:WhatsAppX/screens/home/home_screens/setting_page/setting_widget/profile_details.dart';
import 'package:WhatsAppX/styles/colors.dart';
import 'package:WhatsAppX/util/constants/icons_data.dart';
import 'package:WhatsAppX/util/constants/profile_images.dart';
import 'package:flutter/material.dart';

import 'setting_widget/setting_icons_list.dart';

class Setting extends StatelessWidget {
  final List settingOptionsList = [
    {"icon": CustomIcons().keyIcon, "title": "Account"},
    {"icon": CustomIcons(size: 24).messageIcon, "title": "Chat"},
    {"icon": CustomIcons().bellIcon, "title": "Notification"},
    {"icon": CustomIcons().chartIcon, "title": "Data and storage usage"},
    {"icon": CustomIcons().userIcon, "title": "Contact"},
    {"icon": CustomIcons().paymentIcon, "title": "Payment"},
    {"icon": CustomIcons().groupIcon, "title": "Invite Friend"},
    {"icon": CustomIcons().infoIcon, "title": "About and Help"}
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProfileDetails(
          name: 'Nilesh Kadam',
          status: 'At Work',
        ),
        Divider(
          color: darkDividerColor,
        ),
        SizedBox(height: 10),
        SettingIconsList(
          data: settingOptionsList,
        )
      ],
    );
  }
}
