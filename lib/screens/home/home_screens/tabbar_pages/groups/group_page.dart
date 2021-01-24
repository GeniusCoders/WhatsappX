import 'package:WhatsAppX/styles/colors.dart';
import 'package:flutter/material.dart';

import 'groups_widgets/group_list_container.dart';
import 'groups_widgets/new_group_node.dart';

class GroupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: ListView(
        shrinkWrap: true,
        children: <Widget>[NewGroupNode(), Divider(), GroupListContainer()],
      ),
    );
  }
}
