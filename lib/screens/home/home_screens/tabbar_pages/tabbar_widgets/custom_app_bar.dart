import 'package:WhatsAppX/screens/home/home_screens/home_widgets/custom_avatar.dart';
import 'package:WhatsAppX/screens/home/home_screens/profile/profile_page.dart';
import 'package:WhatsAppX/screens/home/home_screens/setting_page/setting_page.dart';
import 'package:WhatsAppX/styles/colors.dart';
import 'package:WhatsAppX/util/constants/icons_data.dart';
import 'package:WhatsAppX/util/constants/profile_images.dart';
import 'package:flutter/material.dart';

import '../../../home_page.dart';

buildCustomAppBar(
  BuildContext context,
  List<Widget> tabs,
  TabController tabController,
  double appBarHeight,
) {
  return Container(
    padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
    height: appBarHeight,
    decoration: BoxDecoration(color: darkHeaderColor, boxShadow: [
      BoxShadow(
          blurRadius: 4,
          offset: Offset(0, 0),
          color: Color.fromRGBO(0, 0, 0, 0.1),
          spreadRadius: 0)
    ]),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ProfilePage()));
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 6),
            child: Row(
              children: <Widget>[
                CustomAvatar(
                  imgUrl: user2,
                  isShowActiveIcon: true,
                ),
                SizedBox(
                  width: 14.0,
                ),
                Expanded(
                  child: Text('Hi, Demon',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: whiteColor)),
                ),
                IconButton(
                  icon: CustomIcons().searchIcon,
                  onPressed: () {},
                ),
                _buildPopupMenuButton(tabController, context)
              ],
            ),
          ),
        ),
        TabBar(
          controller: tabController,
          tabs: tabs,
          isScrollable: true,
          labelColor: primaryColor,
          unselectedLabelColor: darkGrey,
          indicatorSize: TabBarIndicatorSize.label,
          indicatorWeight: 3.0,
        ),
      ],
    ),
  );
}

_buildPopupMenuButton(TabController tabController, BuildContext context) {
  if (getIsChatList(tabController) || getIsStatusList(tabController))
    return PopupMenuButton(
      color: darkHeaderColor,
      icon: CustomIcons().optionIcon,
      onSelected: (value) {
        if (value == 1005) {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => SettingPage()));
        }
      },
      itemBuilder: (BuildContext _) {
        return [
          {'value': 1001, 'label': 'New group'},
          {'value': 1002, 'label': 'New broadcast'},
          {'value': 1003, 'label': 'New WhatsApp Web'},
          {'value': 1004, 'label': 'Starred messages'},
          {'value': 1005, 'label': 'Settings'},
        ].map((item) {
          return PopupMenuItem(
            value: item['value'],
            child: Text(
              item['label'],
              style: TextStyle(color: whiteColor),
            ),
          );
        }).toList();
      },
    );

  if (getIsCallList(tabController))
    return PopupMenuButton(
      icon: CustomIcons().optionIcon,
      color: darkHeaderColor,
      onSelected: (value) {
        print(value);
      },
      itemBuilder: (BuildContext _) {
        return [
          {'value': 1001, 'label': 'Clear call log'},
          {'value': 1002, 'label': 'Settings'},
        ].map((item) {
          return PopupMenuItem(
            value: item['value'],
            child: Text(item['label'], style: TextStyle(color: whiteColor)),
          );
        }).toList();
      },
    );

  return Container(width: 0.0, height: 0.0);
}
