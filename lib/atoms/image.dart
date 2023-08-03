import 'package:flutter/material.dart';

class OTAImage extends StatelessWidget {
  final String path;
  final double widthImage;
  final double heightImage;

  const OTAImage(
      {Key? key,
      required this.path,
      required this.widthImage,
      required this.heightImage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget image = Image.asset(
      path,
      width: widthImage,
      height: heightImage,
    );
    return image;
  }
}
