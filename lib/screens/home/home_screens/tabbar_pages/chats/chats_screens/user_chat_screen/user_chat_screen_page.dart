import 'package:WhatsAppX/screens/home/home_screens/tabbar_pages/chats/chats_screens/chat_screens_widgets/chat_attachments_box.dart';
import 'package:WhatsAppX/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'user_chat_screen_widgets/user_chat_app_bar.dart';
import 'user_chat_screen_widgets/user_chat_list.dart';
import 'user_chat_screen_widgets/user_chat_text_field.dart';

class UserChatScreenPage extends StatefulWidget {
  @override
  _UserChatScreenPageState createState() => _UserChatScreenPageState();
}

class _UserChatScreenPageState extends State<UserChatScreenPage>
    with TickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> animation;
  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
    );
    animation = CurvedAnimation(
      parent: animationController,
      curve: Curves.easeIn,
    );
  }

  onTap() {
    if (animationController.status == AnimationStatus.forward ||
        animationController.status == AnimationStatus.completed) {
      animationController.reverse();
    } else {
      animationController.forward();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: AnnotatedRegion<SystemUiOverlayStyle>(
            value: SystemUiOverlayStyle(statusBarBrightness: Brightness.dark),
            child: Stack(children: [
              Column(
                children: <Widget>[
                  UserChatAppBar(),
                  Expanded(child: UserChatList()),
                  UserChatTextField(
                    onTap: onTap,
                  ),
                ],
              ),
              Positioned(
                  bottom: 70,
                  right: 10,
                  left: 10,
                  child: ChatAttachmentBox(
                    animation: animation,
                  )),
            ])),
      ),
    );
  }
}
