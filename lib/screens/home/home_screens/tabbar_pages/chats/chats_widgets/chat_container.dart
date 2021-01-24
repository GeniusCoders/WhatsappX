import 'package:WhatsAppX/models/chat_models/user_chat.dart';
import 'package:WhatsAppX/styles/colors.dart';
import 'package:WhatsAppX/util/constants/profile_images.dart';
import 'package:flutter/material.dart';
import 'chat_node.dart';

class ChatContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        separatorBuilder: (context, index) => Divider(color: darkDividerColor),
        padding: EdgeInsets.only(top: 0),
        shrinkWrap: true,
        itemCount: userList.length,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) => ChatNode(
              userChat: userList[index],
            ));
  }
}

const List<UserChat> userList = [
  UserChat(message: 'Hello', profilePhoto: user11, name: 'David Clemons'),
  UserChat(message: 'It happend', profilePhoto: user2, name: 'Rose King'),
  UserChat(message: 'Ok', profilePhoto: user3, name: 'Taelyn Dickens'),
  UserChat(message: 'I know', profilePhoto: user4, name: 'Pierre Hackett'),
  UserChat(message: 'Good Morning', profilePhoto: user5, name: 'Alisa Hester'),
  UserChat(message: 'No thanks', profilePhoto: user6, name: 'June Cha'),
  UserChat(message: 'Hmm', profilePhoto: user7, name: 'Aidyn Cody'),
  UserChat(message: 'Go home', profilePhoto: user8, name: 'Lucy Walker'),
  UserChat(message: 'I need help', profilePhoto: user9, name: 'Rylan Tolbert'),
  UserChat(message: 'Ok Sure', profilePhoto: user10, name: 'Lila Flynn'),
];
