import 'package:flutter/material.dart';
import 'image.dart';
import 'label.dart';

class Button extends StatelessWidget {
  final double? width;
  final double? height;
  final String? label;
  final double? radius;
  final String? iconPath;
  final double? iconWidth;
  final double? labelSize;
  final String? labelColor;
  final double? iconHeight;
  final double? spaces;
  final String? bgColor;
  final VoidCallback? onPressed;

  const Button(
      {Key? key,
      this.width,
      this.height,
      this.label,
      this.radius,
      this.iconPath,
      this.iconWidth,
      this.iconHeight,
      this.spaces,
      this.bgColor,
      this.onPressed,
      this.labelSize,
      this.labelColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: bgColor != null ? Color(int.parse(bgColor!)) : null,

        borderRadius: BorderRadius.circular(radius!),
      ),
      child: TextButton(
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (label != null)
              Label(
                label: label,
                labelSize: labelSize,
                labelColor: labelColor,
              ),
            SizedBox(width: spaces??8),
            if (iconPath != null) 
              OTAImage(
                path: iconPath!,
                widthImage: iconWidth!,
                heightImage: iconHeight!,
              ),
          ],
        ),
      ),
    );
  }
}
