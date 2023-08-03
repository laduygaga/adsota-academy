import 'package:flutter/material.dart';

class Label extends StatelessWidget {
  final String? label;
  final double? labelSize;
  final String? labelColor;

  const Label({Key? key, this.label, this.labelSize, this.labelColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      label!,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: labelSize??16,
        color: Color(int.parse(labelColor??'0xFF0353CC'))
      ),
    );
  }
}
