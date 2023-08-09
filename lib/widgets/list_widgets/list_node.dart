import 'package:WhatsAppX/screens/home/home_screens/home_widgets/custom_avatar.dart';
import 'package:WhatsAppX/util/constants/profile_images.dart';
import 'package:flutter/material.dart';

import 'list_subtitle.dart';
import 'list_title.dart';
import 'list_trailing.dart';

class ListNode extends StatelessWidget {
  final bool isTrailing;

  const ListNode({
    this.isTrailing = false,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: ListTitle(
          text: 'Nilesh Kadam',
        ),
        leading: CustomAvatar(
          radius: 24,
          imgUrl: user3,
          isShowActiveIcon: true,
        ),
        subtitle: ListSubtitle(
          text: 'Hello sorry for distrube you',
        ),
        trailing: isTrailing
            ? ListTrailing()
            : Container(
                width: 0,
                height: 0,
              ));
  }
}
