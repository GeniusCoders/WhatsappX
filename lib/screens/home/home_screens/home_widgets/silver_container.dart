import 'package:WhatsAppX/screens/home/home_screens/home_widgets/sliver_action_icon_container.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class SliverContainer extends StatefulWidget {
  final List<Widget> slivers;
  final double expandedHeight;
  final double marginRight;
  final double topScalingEdge;
  final bool isShowBackButton;
  final List actions;
  SliverContainer({
    @required this.slivers,
    this.expandedHeight = 400,
    this.marginRight = 16.0,
    this.topScalingEdge = 96.0,
    @required this.actions,
    this.isShowBackButton = true,
  });

  @override
  State<StatefulWidget> createState() {
    return new SliverFabState();
  }
}

class SliverFabState extends State<SliverContainer> {
  ScrollController _scrollController;
  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(() => setState(() {}));
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        CustomScrollView(
          controller: _scrollController,
          slivers: widget.slivers,
        ),
        _buildFab(),
      ],
    );
  }

  Widget _buildFab() {
    //starting fab position
    final double defaultTopMargin = !widget.isShowBackButton
        ? widget.expandedHeight - 30.0
        : widget.expandedHeight + 12;
    //pixels from top where scaling should start
    final double scaleStart = 96.0;
    //pixels from top where scaling should end
    final double scaleEnd = scaleStart / 2;

    double top = defaultTopMargin;
    double scale = 1.0;
    if (_scrollController.hasClients) {
      double offset = _scrollController.offset;
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
            children: List.generate(
                widget.actions.length,
                (index) => SilverActionsIconContainer(
                      icon: widget.actions[index],
                      heroTag: 'tag$index',
                    ))),
      ),
    );
  }
}
