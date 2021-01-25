import 'package:WhatsAppX/screens/home/home_screens/profile/profile.dart';
import 'package:WhatsAppX/styles/colors.dart';
import 'package:WhatsAppX/util/constants/icons_data.dart';
import 'package:WhatsAppX/widgets/app_bar/app_bar.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: CustomAppBar(
        title: 'Profile',
        centerTitle: false,
        actions: [
          IconButton(icon: CustomIcons(size: 26).editIcon, onPressed: () {})
        ],
      ),
      body: Profile(),
    );
  }
}
