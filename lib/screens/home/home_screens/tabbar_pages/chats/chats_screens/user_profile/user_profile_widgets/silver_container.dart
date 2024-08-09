import 'package:WhatsAppX/styles/colors.dart';
import 'package:WhatsAppX/util/constants/icons_data.dart';
import 'package:flutter/material.dart';

class SliverContainer extends StatefulWidget {
  final List<Widget> slivers;
  final double expandedHeight;
  final double marginRight;
  final double topScalingEdge;
  final ScrollController scrollController;
  SliverContainer(
      {required this.slivers,
      required this.expandedHeight,
      this.marginRight = 16.0,
      this.topScalingEdge = 96.0,
      required this.scrollController});

  @override
  State<StatefulWidget> createState() {
    return new SliverFabState();
  }
}

class SliverFabState extends State<SliverContainer> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        CustomScrollView(
          controller: widget.scrollController,
          slivers: widget.slivers,
        ),
        _buildFab(),
      ],
    );
  }

  Widget _buildFab() {
    //starting fab position
    final double defaultTopMargin = widget.expandedHeight + 26;
    //pixels from top where scaling should start
    final double scaleStart = 96.0;
    //pixels from top where scaling should end
    final double scaleEnd = scaleStart / 2;

    double top = defaultTopMargin;
    double scale = 1.0;
    if (widget.scrollController.hasClients) {
      double offset = widget.scrollController.offset;
      top -= offset;
      if (offset < defaultTopMargin - scaleStart) {
        //offset small => don't scale down
        scale = 1.0;
      } else if (offset < defaultTopMargin - scaleEnd) {
        //offset between scaleStart and scaleEnd => scale down
        scale = (defaultTopMargin - scaleEnd - offset) / scaleEnd;
      } else {
        //offset passed scaleEnd => hide fab
        scale = 0.0;
      }
    }

    return Positioned(
      top: top,
      right: 16.0,
      child: Transform(
        transform: Matrix4.identity()..scale(scale),
        alignment: Alignment.center,
        child: Row(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(2),
              width: 50,
              height: 50,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(34)),
              child: FittedBox(
                child: FloatingActionButton(
                    heroTag: 'callIcon',
                    onPressed: () => {},
                    child: CustomIcons(color: whiteColor).callIcon),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              padding: EdgeInsets.all(2),
              width: 50,
              height: 50,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(34)),
              child: FittedBox(
                child: FloatingActionButton(
                  heroTag: 'video',
                  onPressed: () => {},
                  child: CustomIcons(color: whiteColor).videoIcon,
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              padding: EdgeInsets.all(2),
              width: 50,
              height: 50,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(34)),
              child: FittedBox(
                child: FloatingActionButton(
                  heroTag: 'chat',
                  onPressed: () => {},
                  child: CustomIcons(color: whiteColor, size: 26).messageIcon,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
