import 'package:flutter/material.dart';
import 'package:tf/config/config.dart';

class TextInputPassword extends StatefulWidget {
  final String hintText;
  final TextInputType textInputType;
  final TextEditingController controller;
  final Color iconColor;

  const TextInputPassword({
    required this.hintText,
    required this.controller,
    this.textInputType = TextInputType.text,
    required this.iconColor,
  });

  @override
  State<TextInputPassword> createState() => _TextInputPasswordState();
}

class _TextInputPasswordState extends State<TextInputPassword> {
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44.0,
      width: 327.0,
      child: TextField(
        controller: widget.controller,
        obscureText: obscureText,
        keyboardType: widget.textInputType,
        style: TextStyle(
            fontFamily: "PoppinsMedium",
            fontSize: 14.0,
            color: Config.subTitleColor),
        decoration: InputDecoration(
          hintText: widget.hintText,
          suffixIcon: IconButton(
              icon: Icon(
                obscureText ? Icons.visibility_off : Icons.visibility,
                color: widget.iconColor,
              ),
              onPressed: () {
                setState(() {
                  obscureText = !obscureText;
                  print(this.obscureText.toString());
                });
              }),
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

//

