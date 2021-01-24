import 'package:WhatsAppX/widgets/list_widgets/list_heading.dart';
import 'package:WhatsAppX/widgets/list_widgets/list_node.dart';
import 'package:flutter/material.dart';

class GroupListContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      children: <Widget>[
        ListHeading(
          text: 'Create new call',
        ),
        ListView.separated(
            padding: EdgeInsets.only(top: 0),
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            separatorBuilder: (context, index) => Divider(),
            itemCount: 10,
            itemBuilder: (context, index) => ListNode(
                  isTrailing: true,
                )),
      ],
    );
  }
}
