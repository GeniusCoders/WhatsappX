import 'package:WhatsAppX/styles/colors.dart';
import 'package:WhatsAppX/util/constants/icons_data.dart';
import 'package:flutter/material.dart';

class AboutMeContainer extends StatelessWidget {
  final String title;
  final String subtitle;

  const AboutMeContainer({@required this.title, @required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        padding: EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: whiteColor),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  subtitle,
                  style: TextStyle(
                    fontSize: 16,
                    color: darkGrey,
                  ),
                )
              ],
            ),
            IconButton(icon: CustomIcons().arrowDown, onPressed: null)
          ],
        ),
      ),
    );
  }
}
