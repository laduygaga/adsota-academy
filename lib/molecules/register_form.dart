import 'package:flutter/material.dart';
import '../atoms/form.dart';

class RegistrationForm extends StatelessWidget{
  final double? maxWidth;
  const RegistrationForm({Key? key, this.maxWidth}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (maxWidth != null && maxWidth! > 800) {
      double scale = maxWidth! / 1440;
      return Container(
        width: 540 * scale,
        height: 600 * scale,
        decoration: const BoxDecoration(
          color: const Color(0xFFE0EDFF),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(24),
            bottomLeft: Radius.circular(24),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 30 * scale),
            SizedBox(
              width: 416 * scale,
              height: 61 * scale,
              child: Text(
                "ĐĂNG KÝ NHẬN TƯ VẤN",
                // textAlign: TextAlign.center,
                style: TextStyle(
                  color: const Color(0xFF0353CC),
                  fontSize: 36 * scale,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              width: 530 * scale,
              height: 500 * scale,
              child: const OTAForm(),
            ),
          ],
        ),
      );
    } else {
      return const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 30),
          SizedBox(
            width: 416,
            height: 61,
            child: Text(
              "ĐĂNG KÝ NHẬN TƯ VẤN",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF0353CC),
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            width: 530,
            height: 530,
            child: OTAForm(),
          ),
        ],
      );
    }
  }
}
