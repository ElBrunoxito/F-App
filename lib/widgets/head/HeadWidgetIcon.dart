import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tf/config/config.dart';

class HeadWidgetIcon extends StatelessWidget {
  final Function onPressed;
  final String title;
  final String image;
  int notificationsCount;
  HeadWidgetIcon(
      {super.key,
      required this.title,
      required this.onPressed,
      required this.image,
      required this.notificationsCount});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100.0,
        padding: const EdgeInsets.only(top: 25.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      onPressed();
                    },
                    icon: ClipRRect(
                      borderRadius: BorderRadius.circular(50.0),
                      child: Image.network(
                        "https://www.upc.edu.pe/static/img/logo_upc_red.png",
                        fit: BoxFit.cover,
                        height: 50.0,
                        width: 50.0,
                      ),
                    ),
                  ),
                  SizedBox(width: 18.0,),
                  Text(
                    title,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                        fontFamily: Config.poppingMedium),
                  ),
                ],
              ),
            ),
            NotificationBell(notificationsCount)
          ],
        ));
  }

  Widget NotificationBell(int notificationsCount) {
    String value = (notificationsCount > 9) ? "+" : notificationsCount.toString();
    double fontSize = (notificationsCount > 9) ? 15 : 10;

    return Container(
      height: 50.0,
      width: 50.0,
      child: Stack(
        children: [
          IconButton(
            iconSize: 30,
            icon: Stack(
              children: [
                const Icon(
                  Icons.notifications,
                  color: Colors.white,
                ),
                Positioned(
                  right: 0,
                  top: 0,
                  child:(notificationsCount == 0)
                        ? SizedBox()
                        :  Container(
                    width: 16,
                    height: 16,
                    decoration: const BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                    ),
                    child:  Center(
                            child: Text(
                              value,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: fontSize,
                                  fontFamily: Config.poppingMedium),
                            ),
                          )
                          
                    
                  ),
                  
                ),
              ],
            ),
            onPressed: () {
              // notificaciones action
              // notificaciones action
              // notificaciones action
              // notificaciones action
              // notificaciones action
            },
          ),
        ],
      ),
    );
  }
}
