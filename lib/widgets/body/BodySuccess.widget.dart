import 'package:flutter/material.dart';
import 'package:tf/config/config.dart';
import 'package:tf/widgets/buttons/MyButton.widget.dart';

class BodySuccessWidget extends StatelessWidget {
  final String bodyText;
  const BodySuccessWidget({super.key,required this.bodyText});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset("assets/images/solicitar.jpg",fit: BoxFit.cover,height: 188.0,),
        const SizedBox(height: 45.0,),
        Text(
          "Solicitud Exitosa",
          style: TextStyle(
              color: Config.titleColor,
              fontFamily: Config.poppingSemiBold,
              fontSize: 16.0),
        ),
        const SizedBox(height: 24.0,),
        Text(
          bodyText,
          style: TextStyle(
              color: Config.subTitleColor,
              fontFamily: Config.poppingMedium,
              fontSize: 14.0),
        ),
        const SizedBox(height: 53.0,),
        MyButton(
          onPressed: () {
            Navigator.pushNamed(context, 'principal');
          },
          texto: "Confirmar",
          camposRellenos: true,
        )
      ],
    );
  }
}
