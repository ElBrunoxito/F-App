import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tf/config/config.dart';

class HeadWidget extends StatelessWidget {
  final Function onPressed;
  final String title;
  final Color colorT;
  HeadWidget({super.key, required this.title, required this.onPressed, this.colorT =Colors.white});

  String svgData = '''
    <svg width="9" height="16" viewBox="0 0 9 16" fill="none" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M0.343046 7.99725C0.343046 7.71059 0.446912 7.42397 0.654206 7.20542L7.18061 0.328115C7.59577 -0.109372 8.26888 -0.109372 8.68387 0.328115C9.09887 0.765425 9.09887 1.47459 8.68387 1.91212L2.90895 7.99725L8.68367 14.0824C9.09866 14.5199 9.09866 15.229 8.68367 15.6663C8.26868 16.104 7.59557 16.104 7.18041 15.6663L0.654005 8.78907C0.446676 8.57042 0.343046 8.2838 0.343046 7.99725Z" fill="white"/>
    </svg>
    ''';
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 93.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {
                        onPressed();
                      },
                      icon: SvgPicture.string(
                        svgData,
                        color: colorT,
                        width: 16.00,
                        height: 16.00,
                      )),
                  Text(
                    title,
                    style: TextStyle(
                        color: colorT,
                        fontSize: 20.0,
                        fontFamily: Config.poppingSemiBold),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
