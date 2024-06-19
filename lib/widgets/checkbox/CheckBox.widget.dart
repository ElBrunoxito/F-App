import 'package:flutter/material.dart';
import 'package:tf/config/config.dart';

class CheckBoxWidget extends StatefulWidget {
  final Function function;
  const CheckBoxWidget({super.key, required this.function});

  @override
  State<CheckBoxWidget> createState() => _CheckBoxWidgetState();
}

class _CheckBoxWidgetState extends State<CheckBoxWidget> {
  bool _isChecked = false;

  /*void _onCheckboxChanged(bool newValue) {
    setState(() {
      _isChecked = newValue;
    });
  }*/

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 24.0,
          height: 24.0,
          child: Transform.scale(
            scale: 24 / 18,
            child: Checkbox(
              value: _isChecked,
              onChanged: (bool? value) {
                setState(() {
                  _isChecked = value!;
                  widget.function();
                });
              },
              checkColor: Config.titleColor,
              activeColor: Colors.transparent,
              side: MaterialStateBorderSide.resolveWith(
                (Set<MaterialState> states) {
                  if (states.contains(MaterialState.selected)) {
                    return BorderSide(
                        color: Config.titleColor,
                        width: 2); // Borde azul cuando está seleccionado
                  } else {
                    return BorderSide(
                        color: Config.borderColorUnSelected,
                        width: 2); // Borde gris cuando no está seleccionado
                  }
                },
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
                side: BorderSide.none,
              ),
            ),
          ),
        ),
        SizedBox(
          width: 12.0,
        ),
        RichText(
            textAlign: TextAlign.start,
            text: const TextSpan(
                style: TextStyle(
                    fontFamily: "PoppinsRegular",
                    fontSize: 14.0,
                    color: Colors.black),
                children: [
                  TextSpan(
                      text:
                          "Al crear una cuenta estás de acuerdo\na nuestros "),
                  TextSpan(
                    text: "Términos y Condiciones",
                    style: TextStyle(
                        fontFamily: "PoppinsBold",
                        fontSize: 14.0,
                        color: Color.fromARGB(255, 25, 4, 255)),
                  ),
                  TextSpan(text: '.')
                ])),

/*
        Text(
          'Al crear una cuenta estás de acuerdo\n a nuestros',
          style: TextStyle(fontSize: 14.0, fontFamily: "PoppinsRegular"),
        ),*/
      ],
    );
    /*return CheckboxListTile(
      title: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: 'Hola, ',
              style: TextStyle(fontSize: 16, color: Colors.black),
            ),
            TextSpan(
              text: 'Inicia sesión para continuar',
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
          ],
        ),
      ),
      value: _isChecked,
      onChanged: (value) {
        setState(() {
          _isChecked = value!;
        });
      },
    );*/
  }
}
