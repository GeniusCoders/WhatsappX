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
          spacing: 40,
          runSpacing: 20,
          crossAxisAlignment: WrapCrossAlignment.center,
          alignment: WrapAlignment.center,
          children: List.generate(
              attachmentsList.length,
              (index) => Column(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage(
                            'assets/${attachmentsList[index]['image']}'),
                        radius: 26,
                      ),
                      SizedBox(height: 10),
                      Text(
                        attachmentsList[index]['title'],
                        style: TextStyle(color: whiteColor),
                      )
                    ],
                  )),
        ),
      ),
      animation: animation,
      centerOffset: Offset(300, 220),
    );
  }
}
