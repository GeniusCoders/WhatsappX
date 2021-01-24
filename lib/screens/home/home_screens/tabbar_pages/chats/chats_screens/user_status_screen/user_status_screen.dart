import 'package:WhatsAppX/styles/colors.dart';
import 'package:WhatsAppX/util/constants/gallery_images.dart';
import 'package:flutter/material.dart';
import 'user_status_screen_widgets/user_status_profile_details.dart';
import 'user_status_screen_widgets/user_status_progress_bar.dart';
import 'user_status_screen_widgets/user_status_reply_button.dart';
import 'user_status_screen_widgets/user_status_text.dart';

class UserStatusScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
          color: Colors.black,
          image: DecorationImage(image: NetworkImage(img1))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            children: <Widget>[UserStatusProgressBar(), UserProfileDetails()],
          ),
          Column(
            children: <Widget>[UserStatusText(), UserStatusReplyButton()],
          ),
        ],
      ),
    );
  }
}
