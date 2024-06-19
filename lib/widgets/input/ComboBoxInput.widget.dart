import 'package:flutter/material.dart';
import 'package:tf/config/config.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

class ComboBoxInput extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;

  const ComboBoxInput(
      {super.key, required this.controller, required this.hintText});

  @override
  State<ComboBoxInput> createState() => _ComboBoxInputState();
}

class _ComboBoxInputState extends State<ComboBoxInput> {
  final List<String> items = Config.tasasDeInteres;
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44.0,
      width: 327.0,
      child: DropdownButtonFormField2<String>(
        decoration: InputDecoration(
          hintText: widget.hintText,
          hintStyle: TextStyle(color: Config.hintTextField),
          contentPadding:
              const EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
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
        ),
        items: items
            .map((item) => DropdownMenuItem<String>(
                  value: item,
                  child: Text(
                    item,
                    style: TextStyle(
                        fontFamily: "PoppinsMedium",
                        fontSize: 14.0,
                        color: Config.subTitleColor),
                  ),
                ))
            .toList(),
        validator: (value) {
          if (value == null) {
            return 'Please select gender.';
          }
          return null;
        },
        onChanged: (value) {
          widget.controller.text = value.toString();
        },
        onSaved: (value) {
          selectedValue = value.toString();
          print(value);
        },
        iconStyleData: const IconStyleData(
          icon: Icon(
            Icons.arrow_drop_down,
            color: Colors.black45,
          ),
          iconSize: 24,
        ),
      ),
    );
  }
}
