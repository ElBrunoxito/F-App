import 'package:flutter/material.dart';
import 'package:tf/config/config.dart';
import 'package:tf/model/BusinessDetail.dart';

class BusinessDetailWidget extends StatelessWidget {
  final BusinessDetail businessDetail;
  final Function onPressed;

  const BusinessDetailWidget(
      {super.key, required this.businessDetail, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    String titulo = businessDetail.entity;
    String direccion = businessDetail.address;
    String informacion = businessDetail.informacion;
    String image = businessDetail.image;

    return Container(
          height: 110.0,
          width: 327.0,
          padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    titulo,
                    style: TextStyle(
                        color: Config.subTitleColor,
                        fontFamily: Config.poppingSemiBold,
                        fontSize: 16.0),
                  ),
                  Text(direccion + "\n" + informacion,
                      style: TextStyle(
                        color: Config.textColorIconButton,
                        fontFamily: Config.poppingMedium,
                        fontSize: 12.0,
                      )),
                ],
              ),
              IconButton(
                onPressed: (){
                  onPressed();
                }
              ,icon: Image.network(
                image,
                fit: BoxFit.cover,
                height: 60.0,
                width: 100.0,
              ))
              
              
            ],
          )
    );
  }
}
