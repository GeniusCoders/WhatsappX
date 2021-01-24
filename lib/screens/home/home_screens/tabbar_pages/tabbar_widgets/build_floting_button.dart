import 'package:WhatsAppX/screens/home/home_screens/select_contact/select_contact_page.dart';
import 'package:flutter/material.dart';

import '../../../home_page.dart';

buildFloatingActionButton(BuildContext context, TabController tabController) {
  if (getIsChatList(tabController)) {
    return FloatingActionButton(
      onPressed: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => SelectContactPage()));
      },
      child: Icon(
        Icons.message,
      ),
    );
  } else if (getIsStatusList(tabController)) {
    return FloatingActionButton(
      onPressed: () {},
      child: Icon(
        Icons.group,
      ),
    );
  } else if (getIsCallList(tabController)) {
    return FloatingActionButton(
      onPressed: () {},
      child: Icon(
        Icons.add_call,
      ),
    );
  }

  return null;
}
