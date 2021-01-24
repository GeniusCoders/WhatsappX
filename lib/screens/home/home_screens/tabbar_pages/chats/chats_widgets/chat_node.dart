import 'package:WhatsAppX/models/chat_models/user_chat.dart';
import 'package:WhatsAppX/screens/home/home_screens/home_widgets/custom_avatar.dart';
import 'package:WhatsAppX/screens/home/home_screens/tabbar_pages/chats/chats_screens/user_chat_screen/user_chat_screen_page.dart';
import 'package:WhatsAppX/styles/colors.dart';
import 'package:WhatsAppX/widgets/list_widgets/list_subtitle.dart';
import 'package:WhatsAppX/widgets/list_widgets/list_title.dart';
import 'package:flutter/material.dart';

class ChatNode extends StatelessWidget {
  final UserChat userChat;

  const ChatNode({@required this.userChat});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => UserChatScreenPage()));
      },
      leading: CustomAvatar(
        radius: 26,
        imgUrl: userChat.profilePhoto,
        isShowActiveIcon: true,
      ),
      title: ListTitle(
        text: userChat.name,
      ),
      subtitle: Row(
        children: <Widget>[
          Icon(
            Icons.done_all,
            color: primaryColor,
            size: 20,
          ),
          SizedBox(
            width: 6,
          ),
          ListSubtitle(
            text: userChat.message,
          ),
        ],
      ),
      trailing: Text(
        '03:35 PM',
        style: TextStyle(
            color: const Color(0xFFC0C0C0), fontWeight: FontWeight.w500),
      ),
    );
  }
}
