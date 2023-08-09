import 'package:WhatsAppX/screens/home/home_screens/home_widgets/custom_avatar.dart';
import 'package:WhatsAppX/screens/home/home_screens/tabbar_pages/chats/chats_screens/user_profile/user_profile_page.dart';
import 'package:WhatsAppX/styles/colors.dart';
import 'package:WhatsAppX/util/constants/icons_data.dart';
import 'package:WhatsAppX/util/constants/profile_images.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class UserChatAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double height;
  final avatarRadius = 20.0;
  final defaultIconButtonPadding = 8.0;
  final leftOffset = -25.0;
  final titleLineHeight = 2.0;

  UserChatAppBar({this.height = kToolbarHeight});

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (_) => UserProfilePage()));
      },
      child: Container(
        height: height,
        color: darkHeaderColor,
        child: Row(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Align(
                            alignment: Alignment.center,
                            child: FaIcon(
                              FontAwesomeIcons.arrowLeft,
                              size: 18,
                              color: whiteColor,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Hero(
                              tag: 'kevin',
                              child: CustomAvatar(
                                imgUrl: user11,
                                radius: 20,
                                // isShowActiveIcon: true,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Text(
                    'Kevin',
                    style: TextStyle(
                      fontSize: 16,
                      color: whiteColor,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: <Widget>[
                IconButton(
                  onPressed: () {},
                  icon: CustomIcons().videoIcon,
                ),
                IconButton(
                  onPressed: () {},
                  icon: CustomIcons().callIcon,
                ),
                IconButton(
                  onPressed: () {},
                  icon: CustomIcons().optionIcon,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
