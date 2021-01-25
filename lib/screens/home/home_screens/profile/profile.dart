import 'package:WhatsAppX/screens/home/home_screens/home_widgets/silver_container.dart';
import 'package:WhatsAppX/screens/home/home_screens/home_widgets/user_profile_app_bar.dart';
import 'package:WhatsAppX/styles/colors.dart';
import 'package:WhatsAppX/util/constants/icons_data.dart';
import 'package:WhatsAppX/util/constants/profile_images.dart';
import 'package:flutter/material.dart';

import 'profile_widgets/about_me_container.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) => SliverContainer(
        isShowBackButton: false,
        actions: [
          CustomIcons(color: whiteColor, size: 26).cameraIcon,
        ],
        slivers: <Widget>[
          UserProfileAppBar(
              backgroundImage: user11,
              title: 'Kevin Dark',
              isShowBackButton: false),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 14,
            ),
          ),
          AboutMeContainer(
            title: 'About and phone number',
            subtitle: 'At Work',
          ),
          AboutMeContainer(
            title: 'Change Number',
            subtitle: '+91 9970039584',
          ),
          AboutMeContainer(
            title: 'My last seen',
            subtitle: 'Nobody',
          )
        ],
      ),
    );
  }
}
