import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tf/config/config.dart';

class CheckBoxTextNormal extends StatefulWidget {
  final EdgeInsets padding;
  final Function onChanged;
  const CheckBoxTextNormal(
      {super.key, required this.padding, required this.onChanged});

  @override
  State<CheckBoxTextNormal> createState() => _CheckBoxTextNormalState();
}

class _CheckBoxTextNormalState extends State<CheckBoxTextNormal> {
  bool _isChecked = false;

  /*void _onCheckboxChanged(bool newValue) {
    setState(() {
      _isChecked = newValue;
    });
  }*/

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: widget.padding,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 24.0,
            height: 24.0,
            child: Checkbox(
              value: _isChecked,
              onChanged: (bool? value) {
                setState(() {
                  _isChecked = value!;
                  widget.onChanged();
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
          const SizedBox(width: 10.0,),
          const Expanded(child: Text("Tengo un negocio"))
        ],
      ),
    );
    /*
    hild: 
    */
  }
}
