import 'package:WhatsAppX/styles/colors.dart';
import 'package:WhatsAppX/util/constants/icons_data.dart';
import 'package:WhatsAppX/widgets/app_bar/app_bar.dart';
import 'package:flutter/material.dart';

import 'select_contact.dart';

class SelectContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: CustomAppBar(
        title: 'Select Contact',
        actions: [
          IconButton(
            onPressed: () {},
            color: primaryColor,
            icon: CustomIcons(
              size: 18,
            ).searchIcon,
          ),
          IconButton(
            onPressed: () {},
            color: primaryColor,
            icon: CustomIcons().optionIcon,
          )
        ],
      ),
      body: SelectContact(),
    );
  }
}
