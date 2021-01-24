import 'package:WhatsAppX/styles/colors.dart';
import 'package:WhatsAppX/util/constants/icons_data.dart';
import 'package:WhatsAppX/widgets/list_widgets/lis_head_node.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'select_contact_widgets/contact_list_container.dart';

class SelectContact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: <Widget>[
        SizedBox(height: 10),
        ListHeadNode(
          icon: FontAwesomeIcons.userPlus,
          title: 'New Contact',
          trailingWidget: IconButton(
            color: primaryColor,
            icon: CustomIcons().qrcodeIcon,
            onPressed: () {},
          ),
        ),
        Divider(),
        ContactListContainer(),
      ],
    );
  }
}
