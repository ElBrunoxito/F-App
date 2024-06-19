import 'package:flutter/material.dart';
import 'package:tf/config/config.dart';

class TitleSubTitleWidget extends StatelessWidget {
  final String title;
  final String subtitle;

  const TitleSubTitleWidget({super.key, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.centerLeft,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontFamily: Config.titleFont,
                color: Config.titleColor,
                fontSize: 24.0,
              ),
            ),
            Text(
              subtitle,
              style: TextStyle(
                fontFamily: Config.subTitleFont,
                color: Config.subTitleColor,
                fontSize: 12.0,
              ),
            ),
          ],
        ));
  }
}
