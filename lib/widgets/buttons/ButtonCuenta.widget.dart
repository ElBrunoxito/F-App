import 'package:flutter/material.dart';
import 'package:tf/config/config.dart';

class ButtonCuentaTarjeta extends StatelessWidget {
  final Function onPressed;
  final String texto;
  final bool estaAqui;
  const ButtonCuentaTarjeta(
      {super.key,
      required this.onPressed,
      required this.texto,
      required this.estaAqui});

  @override
  Widget build(BuildContext context) {
    Color backColor = estaAqui ? Config.titleColor : Color(0xFFF2F1F9);
    Color textColor = estaAqui ? Colors.white : Color(0xFF343434);

    return Container(
      height: 44,
      width: 155,
      child: ElevatedButton(
        onPressed: () {
          onPressed();
        },
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(backColor),
            foregroundColor: MaterialStateProperty.all(textColor),
            shape: MaterialStateProperty.all<OutlinedBorder>(
                RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ))),
        child: Text(
          texto,
          style: TextStyle(fontFamily: Config.poppingMedium, fontSize: 16.0),
        ),
      ),
    );
  }
}
