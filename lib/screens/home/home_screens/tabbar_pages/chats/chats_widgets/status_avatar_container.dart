import 'package:WhatsAppX/models/status_models/user_status.dart';
import 'package:WhatsAppX/styles/colors.dart';
import 'package:WhatsAppX/util/constants/profile_images.dart';
import 'package:flutter/material.dart';
import 'status_avatar.dart';

class StatusAvatarContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 124,
      color: backgroundColor,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: userStatusList.length,
        itemBuilder: (context, index) {
          return StatusAvatar(
              userStatus: userStatusList[index],
              isMe: index == 0 ? true : false);
        },
      ),
    );
  }
}

const List<UserStatusModel> userStatusList = [
  UserStatusModel(
    profilePhoto: user2,
    userName: 'Demon',
  ),
  UserStatusModel(profilePhoto: user3, userName: 'Pierre'),
  UserStatusModel(profilePhoto: user6, userName: 'June'),
  UserStatusModel(profilePhoto: user4, userName: 'Aidyn'),
  UserStatusModel(profilePhoto: user8, userName: 'Rylan'),
  UserStatusModel(profilePhoto: user7, userName: 'Rose'),
  UserStatusModel(profilePhoto: user9, userName: 'Lila')
];
