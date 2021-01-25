import 'package:WhatsAppX/screens/home/home_screens/home_widgets/silver_container.dart';
import 'package:WhatsAppX/screens/home/home_screens/home_widgets/user_profile_app_bar.dart';
import 'package:WhatsAppX/styles/colors.dart';
import 'package:WhatsAppX/util/constants/icons_data.dart';
import 'package:WhatsAppX/util/constants/profile_images.dart';
import 'package:flutter/material.dart';
import 'user_profile_widgets/user_profile_gallery.dart';
import 'user_profile_widgets/user_profile_gallery_title.dart';
import 'user_profile_widgets/user_profile_options.dart';

class UserProfilePage extends StatefulWidget {
  @override
  _UserProfilePageState createState() => _UserProfilePageState();
}

class _UserProfilePageState extends State<UserProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        top: false,
        child: Builder(
          builder: (context) => SliverContainer(
            actions: [
              CustomIcons(color: whiteColor).callIcon,
              CustomIcons(color: whiteColor).videoIcon,
              CustomIcons(color: whiteColor, size: 26).messageIcon,
            ],
            slivers: <Widget>[
              UserProfileAppBar(
                backgroundImage: user11,
                userStatus: 'Online',
                title: 'Kevin Dark',
              ),
              UserProfileGalleryTitle(),
              UserProfileGallery(),
              UserProfileOptions()
            ],
          ),
        ),
      ),
    );
  }
}
