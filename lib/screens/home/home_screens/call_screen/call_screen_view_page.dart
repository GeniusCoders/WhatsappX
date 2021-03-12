import 'package:WhatsAppX/screens/home/home_screens/call_screen/call_screen_view.dart';
import 'package:WhatsAppX/styles/colors.dart';
import 'package:WhatsAppX/widgets/app_bar/app_bar.dart';
import 'package:flutter/material.dart';

class CallScreenViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: CallScreen(),
    );
  }
}
