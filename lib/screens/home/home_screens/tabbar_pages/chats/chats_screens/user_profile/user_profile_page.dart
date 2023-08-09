import 'package:WhatsAppX/styles/colors.dart';
import 'package:flutter/material.dart';
import 'user_profile_widgets/silver_container.dart';
import 'user_profile_widgets/user_profile_app_bar.dart';
import 'user_profile_widgets/user_profile_gallery.dart';
import 'user_profile_widgets/user_profile_gallery_title.dart';
import 'user_profile_widgets/user_profile_options.dart';

class UserProfilePage extends StatefulWidget {
  @override
  _UserProfilePageState createState() => _UserProfilePageState();
}

class _UserProfilePageState extends State<UserProfilePage> {
  late ScrollController _scrollController;
  double kExpandedHeight = 400.0;
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

  double get _horizontalTitlePadding {
    const kBasePadding = 15.0;
    const kMultiplier = 0.5;

    if (_scrollController.hasClients) {
      if (_scrollController.offset < (kExpandedHeight / 2)) {
        // In case 50%-100% of the expanded height is viewed
        return kBasePadding;
      }

      if (_scrollController.offset > (kExpandedHeight - kToolbarHeight)) {
        // In case 0% of the expanded height is viewed
        return (kExpandedHeight / 2 - kToolbarHeight) * kMultiplier +
            kBasePadding;
      }

      // In case 0%-50% of the expanded height is viewed
      return (_scrollController.offset - (kExpandedHeight / 2)) * kMultiplier +
          kBasePadding;
    }

    return kBasePadding;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        top: false,
        child: Builder(
          builder: (context) => SliverContainer(
            scrollController: _scrollController,
            expandedHeight: kExpandedHeight,
            slivers: <Widget>[
              UserProfileAppBar(
                kExpandedHeight: kExpandedHeight,
                horizontalTitlePadding: _horizontalTitlePadding,
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
