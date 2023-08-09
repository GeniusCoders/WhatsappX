import 'package:WhatsAppX/styles/colors.dart';
import 'package:flutter/material.dart';

class UserChatNode extends StatelessWidget {
  final String chatText;
  final String chatType;

  UserChatNode({required this.chatText, required this.chatType});

  @override
  Widget build(BuildContext context) {
    if (chatType == 'send') {
      return SendChatNode(
        text: chatText,
      );
    } else if (chatType == 'receive') {
      return ReceiveChatNode(
        text: chatText,
      );
    } else {
      return Container();
    }
  }
}

class SendChatNode extends StatelessWidget {
  final String text;

  SendChatNode({required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5),
      child: Align(
        alignment: Alignment.bottomLeft,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: darkChatNodeColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    topLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  )),
              constraints: BoxConstraints(
                  maxWidth: MediaQuery.of(context).size.width * .6),
              child: Text(
                text,
                style: TextStyle(color: whiteColor),
              ),
            ),
            TimeChatNode()
          ],
        ),
      ),
    );
  }
}

class ReceiveChatNode extends StatelessWidget {
  final String text;

  ReceiveChatNode({required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5),
      child: Align(
        alignment: Alignment.bottomRight,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10),
              constraints: BoxConstraints(
                  maxWidth: MediaQuery.of(context).size.width * .6),
              decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10),
                    topLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  )),
              child: Text(
                text,
                style: TextStyle(color: whiteColor),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                TimeChatNode(),
                Icon(
                  Icons.done_all,
                  color: primaryColor,
                  size: 20,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class TimeChatNode extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      child: Text('2:20 PM',
          style: TextStyle(
              color: lightWhite, fontWeight: FontWeight.w400, fontSize: 12)),
    );
  }
}
