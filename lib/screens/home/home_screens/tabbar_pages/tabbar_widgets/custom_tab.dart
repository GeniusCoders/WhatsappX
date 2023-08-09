import 'package:WhatsAppX/styles/colors.dart';
import 'package:WhatsAppX/util/constants/icons_data.dart';
import 'package:flutter/material.dart';

class CustomTab extends StatelessWidget {
  final String text;
  final double yourWidth;
  final bool isCameraIcon;
  final double height;

  const CustomTab(
      {required this.text,
      required this.yourWidth,
      this.isCameraIcon = false,
      this.height = 46});

  getW() {
    return AppBar();
  }

  @override
  Widget build(BuildContext context) {
    if (isCameraIcon) {
      return Container(
          width: 30,
          height: height,
          alignment: Alignment.center,
          child: CustomIcons(color: darkGrey).cameraIcon);
    } else {
      return Container(
          width: yourWidth,
          height: height,
          alignment: Alignment.center,
          child: Text(text, style: TextStyle(fontWeight: FontWeight.w600)));
    }
  }
}
