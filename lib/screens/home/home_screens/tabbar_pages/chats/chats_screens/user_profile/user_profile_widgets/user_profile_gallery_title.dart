import 'package:WhatsAppX/styles/colors.dart';
import 'package:WhatsAppX/util/constants/icons_data.dart';
import 'package:flutter/material.dart';

class UserProfileGalleryTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        margin: EdgeInsets.only(top: 30, left: 20, right: 20),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Text(
                "Media",
                style: TextStyle(
                    fontSize: 18,
                    color: primaryColor,
                    fontWeight: FontWeight.w500),
              ),
            ),
            Row(
              children: <Widget>[
                Text(
                  '78',
                  style: TextStyle(
                      fontSize: 14,
                      color: whiteColor,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  width: 10,
                ),
                CustomIcons().rightArrow,
              ],
            )
          ],
        ),
      ),
    );
  }
}
