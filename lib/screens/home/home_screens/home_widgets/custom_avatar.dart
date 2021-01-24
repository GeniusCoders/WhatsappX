import 'package:WhatsAppX/styles/colors.dart';
import 'package:WhatsAppX/util/constants/icons_data.dart';
import 'package:WhatsAppX/util/enum/enums.dart';
import 'package:flutter/material.dart';

class CustomAvatar extends StatelessWidget {
  final double radius;
  final bool isShowActiveIcon;
  final UserStatus userStatus;
  final String imgUrl;

  CustomAvatar(
      {this.radius = 20,
      this.isShowActiveIcon = false,
      this.userStatus = UserStatus.online,
      @required this.imgUrl});

  _getStatusColor() {
    if (userStatus == UserStatus.offline) {
      return lightWhite;
    } else {
      return primaryColor;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: radius * 2 + 6,
      child: Stack(
        children: <Widget>[
          CircleAvatar(
            radius: radius,
            backgroundColor: backgroundColor,
            backgroundImage: NetworkImage(
              imgUrl,
            ),
          ),
          isShowActiveIcon
              ? Positioned(
                  bottom: 0,
                  left: radius - 6,
                  child: OnlineOfflineDot(
                    color: _getStatusColor(),
                  ))
              : Container()
        ],
      ),
    );
  }
}

class OnlineOfflineDot extends StatelessWidget {
  final Color color;

  const OnlineOfflineDot({@required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 12,
      height: 12,
      decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(6)),
      child: Center(
        child: CustomIcons(color: color, size: 10).solidCircle,
      ),
    );
  }
}
