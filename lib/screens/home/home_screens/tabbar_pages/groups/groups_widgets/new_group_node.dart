import 'package:WhatsAppX/widgets/list_widgets/lis_head_node.dart';
import 'package:WhatsAppX/widgets/list_widgets/list_heading.dart';
import 'package:WhatsAppX/widgets/list_widgets/list_trailing.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NewGroupNode extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: <Widget>[
        ListHeading(
          text: 'Create new group call',
        ),
        ListHeadNode(
          icon: FontAwesomeIcons.users,
          title: 'New Group',
          trailingWidget: ListTrailing(),
        ),
      ],
    );
  }
}
