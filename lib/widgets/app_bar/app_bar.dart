import 'package:WhatsAppX/styles/colors.dart';
import 'package:WhatsAppX/util/constants/icons_data.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends PreferredSize {
  final double height;
  final String title;
  final List<Widget> actions;
  final bool centerTitle;
  const CustomAppBar(
      {this.centerTitle,
      this.actions,
      this.height = kToolbarHeight,
      @required this.title});

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: darkHeaderColor,
      centerTitle: centerTitle,
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: CustomIcons(color: whiteColor).backArrowIcon,
      ),
      title: Text(
        title,
        style: TextStyle(color: whiteColor),
      ),
      actions: actions,
    );
  }
}
