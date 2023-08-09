import 'package:flutter/material.dart';

class UserProfileGalleryListView extends StatelessWidget {
  final List list;
  final double height;
  const UserProfileGalleryListView({required this.list, this.height = 220.0});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      margin: EdgeInsets.only(left: 20, top: 10),
      child: GridView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: list.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, crossAxisSpacing: 10),
          itemBuilder: (context, index) => Container(
                margin: EdgeInsets.only(
                  right: 10,
                ),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          list[index],
                        ))),
              )),
    );
  }
}
