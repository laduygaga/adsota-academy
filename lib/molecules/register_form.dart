import 'package:flutter/material.dart';
import '../atoms/form.dart';

class RegistrationForm extends StatelessWidget{
  final double maxWidth;

  const RegistrationForm({Key? key, required this.maxWidth}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (maxWidth > 800) {
      double scale = maxWidth / 1440;
      if (maxWidth > 1440) {
        scale = 1;
      }
      return Container(
        width: 540 * scale,
        height: 600 * scale,
        decoration: const BoxDecoration(
          color: Color(0xFFE0EDFF),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(24),
            bottomLeft: Radius.circular(24),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "ĐĂNG KÝ NHẬN TƯ VẤN",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: const Color(0xFF0353CC),
                fontSize: 36 * scale,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              width: 530 * scale,
              height: 500 * scale,
              child: OTAForm(
                maxWidth: maxWidth),
            ),
          ],
        ),
      );
    } else {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 50),
          const Text(
            "ĐĂNG KÝ NHẬN TƯ VẤN",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFF0353CC),
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 50),
          SizedBox(
            child: OTAForm(
              maxWidth: maxWidth),
          ),
          const SizedBox(height: 30),
        ],
      );
    }
  }
}
