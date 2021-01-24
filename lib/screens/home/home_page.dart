import 'home_screens/tabbar_pages/calls/call_page.dart';
import 'home_screens/tabbar_pages/camera/camera.dart';
import 'home_screens/tabbar_pages/chats/chat_page.dart';
import 'package:flutter/material.dart';

import 'home_screens/tabbar_pages/groups/group_page.dart';
import 'home_screens/tabbar_pages/tabbar_widgets/build_floting_button.dart';
import 'home_screens/tabbar_pages/tabbar_widgets/custom_app_bar.dart';
import 'home_screens/tabbar_pages/tabbar_widgets/custom_tab.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this, initialIndex: 1);
    _tabController.animation.addListener(_handleAppBarAnimation);
    _tabController.animation.addListener(_handleTabIndex);
  }

  double _appBarTop = 0.0;

  final int _cameraTapIndex = 0;

  double _getappBarHeight(BuildContext context) {
    final double kTabHeight = 50.0;
    final double inicatorHeight = 3.0;

    return kToolbarHeight +
        kTabHeight +
        inicatorHeight +
        MediaQuery.of(context).padding.top;
  }

  _buildTabView() {
    return TabBarView(
      controller: _tabController,
      children: <Widget>[
        WillPopScope(
          onWillPop: () {
            // shift to the right-handed-side tap;
            _tabController.animateTo(_cameraTapIndex + 1);
            return null;
          },
          child: CameraPage(),
        ),
        ChatPage(),
        GroupPage(),
        CallPage(),
      ],
    );
  }

  _handleAppBarAnimation() {
    if (_tabController.animation.value <= 1.0 && _cameraTapIndex == 0) {
      final value = _tabController.animation.value;
      final appBarHeight = _getappBarHeight(context);

      setState(() {
        _appBarTop = -(1 - value) * appBarHeight;
      });
    }
  }

  _handleTabIndex() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    final marginTopRaw = _appBarTop +
        _getappBarHeight(context) -
        MediaQuery.of(context).padding.top;
    final marginTop = marginTopRaw > 0 ? marginTopRaw : 0.0;
    double yourWidth = width / 5;
    return Scaffold(
        body: Stack(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(
                top: marginTop,
              ),
              child: _buildTabView(),
            ),
            Positioned(
              left: 0.0,
              right: 0.0,
              top: _appBarTop,
              child: buildCustomAppBar(
                context,
                [
                  CustomTab(
                    isCameraIcon: true,
                  ),
                  CustomTab(
                    text: 'Chat',
                    yourWidth: yourWidth,
                  ),
                  CustomTab(
                    text: 'Groups',
                    yourWidth: yourWidth,
                  ),
                  CustomTab(
                    text: 'Call',
                    yourWidth: yourWidth,
                  ),
                ],
                _tabController,
                _getappBarHeight(context),
              ),
            ),
          ],
        ),
        floatingActionButton:
            buildFloatingActionButton(context, _tabController));
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
    _tabController.animation.removeListener(_handleAppBarAnimation);
    _tabController.animation.removeListener(_handleTabIndex);
  }
}

bool getIsTabCamera(TabController tabController) {
  return tabController.animation.value < 0.7;
}

bool getIsChatList(TabController tabController) {
  return tabController.animation.value > 0.7 &&
      tabController.animation.value < 1.7;
}

bool getIsStatusList(TabController tabController) {
  return tabController.animation.value > 1.7 &&
      tabController.animation.value < 2.7;
}

bool getIsCallList(TabController tabController) {
  return tabController.animation.value > 2.7;
}
