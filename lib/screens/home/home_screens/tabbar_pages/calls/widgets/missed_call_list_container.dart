import 'package:WhatsAppX/styles/colors.dart';
import 'package:WhatsAppX/widgets/list_widgets/list_heading.dart';
import 'package:flutter/material.dart';

import 'call_list_node.dart';

class MissedCallListContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      children: <Widget>[
        ListHeading(
          text: 'Missed Calls',
          color: red,
        ),
        ListView.separated(
            padding: EdgeInsets.only(top: 0),
            separatorBuilder: (context, index) => Divider(),
            itemCount: 2,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) => CallListNode(
                  isCallMissed: true,
                )),
      ],
    );
  }
}
