import 'package:WhatsAppX/screens/home/home_screens/tabbar_pages/chats/chats_screens/chat_screens_widgets/list_view_attachments.dart';
import 'package:WhatsAppX/styles/colors.dart';
import 'package:circular_reveal_animation/circular_reveal_animation.dart';
import 'package:flutter/material.dart';

List attachmentsList = [
  {"image": "attach_audio.png", "title": "Audio"},
  {"image": "attach_contact.png", "title": "Contact"},
  {"image": "attach_document.png", "title": "Document"},
  {"image": "attach_gallery.png", "title": "Gallery"},
  {"image": "attach_location.png", "title": "Location"},
  {"image": "attach_audio.png", "title": "Audio"},
];

class ChatAttachmentBox extends StatelessWidget {
  final Animation<double> animation;

  const ChatAttachmentBox({@required this.animation});

  @override
  Widget build(BuildContext context) {
    return CircularRevealAnimation(
      child: Container(
          width: 300,
          height: 220,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: darkHeaderColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Wrap(
              direction: Axis.horizontal,
              spacing: 20,
              runSpacing: 20,
              crossAxisAlignment: WrapCrossAlignment.center,
              alignment: WrapAlignment.center,
              children: List.generate(attachmentsList.length, (index) {
                return AttachmentView(
                    image: attachmentsList[index]['image'],
                    title: attachmentsList[index]['title']);
              }))),
      animation: animation,
      centerOffset: Offset(300, 220),
    );
  }
}
