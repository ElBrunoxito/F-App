import 'package:flutter/material.dart';
import 'package:tf/config/config.dart';
//import 'package:flutter_combo_box/flutter_combo_box.dart';


class ComboBoxInput extends StatefulWidget {
  final TextEditingController controller;

  const ComboBoxInput({
    super.key,
    required this.controller,
  });

  @override
  State<ComboBoxInput> createState() => _ComboBoxInputState();
}

class _ComboBoxInputState extends State<ComboBoxInput> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 44.0,
        width: 327.0,
        child:
            /*TextField(
        controller: controller,
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
      ),*/
           /* DropdownMenu(
          initialSelection: Config.tasasDeInteres.first,
          onSelected: (String? value) {
            setState(() {});
          },
          
          controller: widget.controller,
          dropdownMenuEntries: Config.tasasDeInteres
              .map<DropdownMenuEntry<String>>((String value) {
            return DropdownMenuEntry<String>(value: value, label: value);
          }).toList(),  

        
        )*/
        Center(child: Text("xd"),)



        
        /*DropdownButtonHideUnderline(
          child: DropdownButton(
            isExpanded: true,
            hint: Text(
              'Selecciona una opción',
              style: TextStyle(
                fontSize: 14,
                color: Config.hintTextField,
              ),
            ),
            items: Config.tasasDeInteres
                .map((item) => DropdownMenuItem<String>(
                      value: item,
                      child: Text(
                        item,
                        style: const TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    ))
                .toList(),
            value: selectedValue,
            onChanged: (value) {
              setState(() {
                selectedValue = value as String;
              });
            },          
            buttonStyleDat: ButtonStyleData(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                border: Border.all(
                  color: Config.borderTextField,
                ),
              ),
            ),
            dropdownStyleData: DropdownStyleData(
              maxHeight: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                border: Border.all(
                  color: Config.borderTextField,
                ),
                color: Colors.white, // Color de fondo del menú desplegable
              ),
              offset: const Offset(0, 8),
            ),
            menuItemStyleData: MenuItemStyleData(
              padding: const EdgeInsets.symmetric(horizontal: 20),
            ),
          ),
        ),
      */
        );
  }
}
