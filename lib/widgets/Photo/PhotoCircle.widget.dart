import 'package:flutter/material.dart';

class PhotoCircle extends StatelessWidget {
  final double height,width;
  final Image image;
  const PhotoCircle({super.key,required this.height,required this.width,required this.image});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
  borderRadius: BorderRadius.circular(50.0),
  child: SizedBox(
    height: height,
    width: width,
    child: image,
  ),
);

  /*
  ClipRRect(
                      borderRadius: BorderRadius.circular(50.0),
                      child: Image.network(
                        image,
                        fit: BoxFit.cover,
                        height: 50.0,
                        width: 50.0,
                      ),
                    ),
  */
  }
}
