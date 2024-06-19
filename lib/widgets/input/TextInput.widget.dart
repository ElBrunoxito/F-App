import 'package:flutter/material.dart';
import 'package:tf/config/config.dart';

class TextInput extends StatelessWidget {
  final String hintText;
  final bool obscureText;
  final TextInputType textInputType;
  final TextEditingController controller;
  TextInput({
    required this.hintText,
    this.obscureText = false,
    required this.controller,
    this.textInputType = TextInputType.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44.0,
      width: 327.0,
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        keyboardType: textInputType,
        style: TextStyle(
            fontFamily: "PoppinsMedium",
            fontSize: 14.0,
            color: Config.subTitleColor),
        decoration: InputDecoration(
          hintText: hintText,

          hintStyle: TextStyle(color: Config.hintTextField),
          contentPadding:
              EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Config.borderTextField),
            borderRadius: BorderRadius.circular(15.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Config.borderTextField),
            borderRadius: BorderRadius.circular(15.0),
          ),

          ///Ver la contraseña
          ///NODE FOCUS
        ),
      ),
    );
  }
}
