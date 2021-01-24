import 'package:WhatsAppX/widgets/list_widgets/list_node.dart';
import 'package:flutter/material.dart';

class ContactListContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) => Divider(),
      itemCount: 20,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) => ListNode(isTrailing: false),
    );
  }
}
