import 'package:WhatsAppX/styles/colors.dart';
import 'package:WhatsAppX/util/constants/icons_data.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends PreferredSize {
  final double height;
  final String title;
  const CustomAppBar({this.height = kToolbarHeight, @required this.title});

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(Icons.arrow_back),
      ),
      title: Text(
        title,
        style: TextStyle(color: whiteColor),
      ),
      actions: <Widget>[
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
    );
  }
}
