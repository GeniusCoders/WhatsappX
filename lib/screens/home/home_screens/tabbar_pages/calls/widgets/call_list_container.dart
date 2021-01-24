import 'package:WhatsAppX/widgets/list_widgets/list_heading.dart';
import 'package:flutter/material.dart';

import 'call_list_node.dart';

class CallListContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      children: <Widget>[
        ListHeading(
          text: 'Other Calls',
        ),
        ListView.separated(
            padding: EdgeInsets.only(top: 0),
            separatorBuilder: (context, index) => Divider(),
            itemCount: 10,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) => CallListNode()),
      ],
    );
  }
}
