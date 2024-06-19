import 'package:flutter/material.dart';
import 'package:tf/config/config.dart';

class SearchInput extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final Function function;

  const SearchInput(
      {super.key,
      required this.hintText,
      required this.controller,
      required this.function});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44.0,
      width: 327.0,
      child: TextField(
        controller: this.controller,
        keyboardType: TextInputType.text,
        style: TextStyle(
            fontFamily: "PoppinsMedium",
            fontSize: 14.0,
            color: Config.subTitleColor),
        decoration: InputDecoration(
          hintText: this.hintText,
          suffixIcon: IconButton(
              icon: Icon(
                Icons.search,
                color: Config.iconColorBottom,
              ),
              onPressed: () {
                function();
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
