import 'package:WhatsAppX/screens/home/home_screens/tabbar_pages/calls/widgets/call_list_container.dart';
import 'package:WhatsAppX/screens/home/home_screens/tabbar_pages/calls/widgets/missed_call_list_container.dart';
import 'package:WhatsAppX/styles/colors.dart';
import 'package:flutter/material.dart';

class CallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        bottom: false,
        child: ListView(
          shrinkWrap: true,
          children: <Widget>[
            MissedCallListContainer(),
            Divider(),
            CallListContainer()
          ],
        ),
      ),
    );
  }
}
