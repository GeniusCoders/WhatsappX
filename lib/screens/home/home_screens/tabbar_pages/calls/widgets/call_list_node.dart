import 'package:WhatsAppX/screens/home/home_screens/home_widgets/custom_avatar.dart';
import 'package:WhatsAppX/styles/colors.dart';
import 'package:WhatsAppX/util/constants/icons_data.dart';
import 'package:WhatsAppX/util/constants/profile_images.dart';
import 'package:WhatsAppX/widgets/list_widgets/list_subtitle.dart';
import 'package:WhatsAppX/widgets/list_widgets/list_title.dart';
import 'package:flutter/material.dart';

class CallListNode extends StatelessWidget {
  final bool isCallMissed;

  const CallListNode({this.isCallMissed = false});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: ListTitle(
          text: 'Nilesh Kadam',
        ),
        leading: SizedBox(
          width: 48,
          height: 48,
          child: CustomAvatar(
            radius: 24,
            imgUrl: user3,
          ),
        ),
        subtitle: Row(
          children: <Widget>[
            isCallMissed
                ? CustomIcons(color: red, size: 18).missedCallIcon
                : CustomIcons(size: 18).callOutgoing,
            SizedBox(width: 6),
            CustomIcons(
              color: lightWhite,
              size: 12,
            ).clockIcon,
            SizedBox(
              width: 6,
            ),
            ListSubtitle(
              text: 'Today 9:20 pm',
            ),
          ],
        ),
        trailing: CustomIcons(color: primaryColor).callIcon);
  }
}
