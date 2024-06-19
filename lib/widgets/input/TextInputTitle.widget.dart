import 'package:flutter/material.dart';
import 'package:tf/config/config.dart';

class TextInputTitle extends StatelessWidget {
  final Widget child;
  final String text;
  const TextInputTitle({super.key, 
  required this.text,
  required this.child
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(left: 9.0),
          child: Text(
            text,         
            style: TextStyle(
                color: Config.hintTextField,
                fontFamily: Config.poppingMedium,
                fontSize: 14.0),
          ),
        ),
        const SizedBox(height: 7.0,),
        child
      ],
    );
  }
}
