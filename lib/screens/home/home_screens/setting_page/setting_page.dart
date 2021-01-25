import 'package:WhatsAppX/screens/home/home_screens/setting_page/setting.dart';
import 'package:WhatsAppX/util/constants/icons_data.dart';
import 'package:WhatsAppX/widgets/app_bar/app_bar.dart';
import 'package:flutter/material.dart';

class SettingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Setting',
        centerTitle: false,
        actions: [IconButton(icon: CustomIcons().optionIcon, onPressed: () {})],
      ),
      body: Setting(),
    );
  }
}
