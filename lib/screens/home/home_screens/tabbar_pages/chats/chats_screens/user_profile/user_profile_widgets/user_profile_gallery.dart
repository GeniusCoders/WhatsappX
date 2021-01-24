import 'package:WhatsAppX/util/constants/gallery_images.dart';
import 'package:flutter/material.dart';

import 'user_profile_gallery_listview.dart';

class UserProfileGallery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
        child: Column(
      children: <Widget>[
        UserProfileGalleryListView(
          list: galleryList,
        ),
      ],
    ));
  }
}

List galleryList = [
  img1,
  img2,
  img3,
  img4,
  img5,
  img6,
  img7,
  img8,
  img9,
  img10
];

List galleryListTwo = [];
