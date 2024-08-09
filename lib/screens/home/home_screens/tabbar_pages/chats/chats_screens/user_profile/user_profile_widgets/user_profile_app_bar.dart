import 'package:WhatsAppX/util/constants/profile_images.dart';
import 'package:flutter/material.dart';

class UserProfileAppBar extends StatelessWidget {
  final double kExpandedHeight;
  final double horizontalTitlePadding;
  const UserProfileAppBar(
      {required this.kExpandedHeight, required this.horizontalTitlePadding});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      iconTheme: IconThemeData(color: Colors.white),
      expandedHeight: kExpandedHeight,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: false,
        title: Transform.translate(
          offset: Offset(-40, -10),
          child: Container(
            height: 40,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Kevin Dark",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  "online",
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
              ],
            ),
          ),
        ),
        background: Hero(
          tag: 'kevin',
          child: Image.network(
            user11,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
