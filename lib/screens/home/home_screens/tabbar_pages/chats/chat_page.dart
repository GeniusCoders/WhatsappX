import 'package:WhatsAppX/styles/colors.dart';
import 'package:flutter/material.dart';

import 'chats_widgets/chat_container.dart';
import 'chats_widgets/status_avatar_container.dart';

class ChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: ListView(
        shrinkWrap: true,
        children: [StatusAvatarContainer(), Divider(), ChatContainer()],
      ),
    );
  }
}
