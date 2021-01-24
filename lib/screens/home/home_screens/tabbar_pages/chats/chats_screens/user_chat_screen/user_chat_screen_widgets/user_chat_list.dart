import 'package:WhatsAppX/screens/home/home_screens/tabbar_pages/chats/chats_screens/user_chat_screen/user_chat_screen_widgets/user_chat_node.dart';
import 'package:flutter/material.dart';

class UserChatList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/whatsapp_background.png'),
            fit: BoxFit.cover),
      ),
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: _chatList.length,
          itemBuilder: (context, index) => UserChatNode(
                chatText: _chatList[index]['chatText'],
                chatType: _chatList[index]['type'],
              )),
    );
  }
}

List _chatList = [
  {"chatText": 'Hey there! What’s up?', "type": "send"},
  {"chatText": 'Hey! Nothing much', "type": "receive"},
  {"chatText": 'Ok, Cool So Are you available for some work?', "type": "send"},
  {"chatText": 'I need your help for my food stuff', "type": "receive"},
  {"chatText": 'ok, no worry will do it', "type": "send"},
  {"chatText": 'Hey there! What’s up?', "type": "send"},
  {"chatText": 'Hey! Nothing much', "type": "receive"},
  {"chatText": 'Ok, Cool So Are you available for some work?', "type": "send"},
  {"chatText": 'I need your help for my food stuff', "type": "receive"},
  {"chatText": 'ok, no worry will do it', "type": "send"}
];
