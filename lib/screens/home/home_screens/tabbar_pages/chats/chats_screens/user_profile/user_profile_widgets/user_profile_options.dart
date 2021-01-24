import 'package:WhatsAppX/styles/colors.dart';
import 'package:flutter/material.dart';

class UserProfileOptions extends StatefulWidget {
  @override
  _UserProfileOptionsState createState() => _UserProfileOptionsState();
}

class _UserProfileOptionsState extends State<UserProfileOptions> {
  bool switchValue = true;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0, top: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'About and phone number',
                  style: TextStyle(
                      fontSize: 16,
                      color: whiteColor,
                      fontWeight: FontWeight.w600),
                ),
                Switch(
                  value: switchValue,
                  onChanged: (bool value) {
                    setState(() {
                      switchValue = value;
                    });
                  },
                ),
              ],
            ),
            Text(
              'Custom Notification',
              style: TextStyle(
                  fontSize: 16, color: whiteColor, fontWeight: FontWeight.w600),
            )
          ],
        ),
      ),
    );
  }
}
