import 'package:WhatsAppX/styles/colors.dart';
import 'package:WhatsAppX/util/constants/icons_data.dart';
import 'package:flutter/material.dart';

class UserProfileAppBar extends StatelessWidget {
  final double kExpandedHeight;
  final String backgroundImage;
  final String title;
  final bool isShowBackButton;

  final String userStatus;
  const UserProfileAppBar({
    this.kExpandedHeight = 400,
    @required this.backgroundImage,
    @required this.title,
    this.userStatus,
    this.isShowBackButton = true,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      iconTheme: IconThemeData(color: Colors.white),
      expandedHeight: kExpandedHeight,
      pinned: true,
      automaticallyImplyLeading: isShowBackButton,
      leading: isShowBackButton
          ? IconButton(
              icon: CustomIcons(color: whiteColor, size: 24).backArrowIcon,
              onPressed: () {
                Navigator.pop(context);
              },
            )
          : Container(),
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: false,
        title: Transform.translate(
          offset: Offset(-40, userStatus == null ? 30 : -10),
          child: Container(
            height: 60,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                ),
                if (userStatus != null)
                  Text(
                    userStatus,
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
              ],
            ),
          ),
        ),
        background: Hero(
          tag: title,
          child: Image.network(
            backgroundImage,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
