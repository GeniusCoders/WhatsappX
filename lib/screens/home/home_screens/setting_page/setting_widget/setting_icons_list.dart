import 'package:WhatsAppX/styles/colors.dart';
import 'package:flutter/material.dart';

class SettingIconsList extends StatelessWidget {
  final List data;

  const SettingIconsList({this.data});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        data.length,
        (index) => Padding(
          padding: EdgeInsets.symmetric(vertical: 2.0),
          child: ListTile(
            leading: data[index]['icon'],
            title: Text(
              data[index]['title'],
              style: TextStyle(fontSize: 16, color: whiteColor),
            ),
          ),
        ),
      ),
    );
  }
}
