import 'package:WhatsAppX/styles/colors.dart';
import 'package:flutter/material.dart';

class SilverActionsIconContainer extends StatelessWidget {
  final Widget icon;
  final String heroTag;
  final Function onPess;
  const SilverActionsIconContainer(
      {@required this.icon, @required this.heroTag, this.onPess});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.all(2),
          margin: EdgeInsets.only(left: 10),
          width: 50,
          height: 50,
          decoration: BoxDecoration(
              color: backgroundColor, borderRadius: BorderRadius.circular(34)),
          child: FittedBox(
            child: FloatingActionButton(
              heroTag: heroTag,
              onPressed: () => {},
              child: icon,
            ),
          ),
        ),
      ],
    );
  }
}
