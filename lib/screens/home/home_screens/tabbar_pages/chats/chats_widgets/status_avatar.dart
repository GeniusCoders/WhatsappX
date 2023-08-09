import 'package:WhatsAppX/models/status_models/user_status.dart';
import 'package:WhatsAppX/screens/home/home_screens/home_widgets/custom_avatar.dart';
import 'package:WhatsAppX/styles/colors.dart';
import 'package:WhatsAppX/util/constants/icons_data.dart';
import 'package:flutter/material.dart';

class StatusAvatar extends StatelessWidget {
  final bool isMe;
  final UserStatusModel userStatus;

  StatusAvatar({this.isMe = false, required this.userStatus});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 10),
        child: Column(
          children: <Widget>[
            Container(
              height: 80,
              child: Stack(
                children: <Widget>[
                  Container(
                    width: 70,
                    height: 70,
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                        border: Border.all(color: primaryColor, width: 2),
                        color: backgroundColor,
                        borderRadius: BorderRadius.circular(40)),
                    child: CustomAvatar(
                      radius: 30,
                      imgUrl: userStatus.profilePhoto,
                    ),
                  ),
                  isMe
                      ? Positioned(
                          bottom: 6,
                          right: 10,
                          child: Container(
                            width: 22,
                            height: 22,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(11),
                              color: backgroundColor,
                            ),
                            child: CustomIcons().pluseCircle,
                          ),
                        )
                      : Container(),
                ],
              ),
            ),
            Text(
              isMe ? 'Your Status' : userStatus.userName,
              style: TextStyle(fontSize: 14, color: whiteColor),
            )
          ],
        ),
      ),
    );
  }
}
