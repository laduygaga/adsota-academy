
import 'package:flutter/material.dart';

import '../molecules/register_form.dart';
import '../molecules/contact.dart';

class RegisterContact extends StatelessWidget {
  const RegisterContact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height;
    double maxWidth = MediaQuery.of(context).size.width;
    if (maxWidth <= 800) {
      height = 1076 * 1.7;
    } else {
      height = 700;
    }
    if (maxWidth >= 1440) {
      maxWidth = 1440;
    }
    if (maxWidth > 800) {
      return Container(
        width: maxWidth,
        height: height,
        color: const Color(0xFFF8FBFF),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox( width: 55 * maxWidth / 1440),
            RegistrationForm(maxWidth: maxWidth),
            Contact(maxWidth: maxWidth),
          ],
        ),
      );
    } else {
      return Container(
        width: maxWidth,
        height: height,
        color: const Color(0xFFF8FBFF),
        child: Center(
          child: Container(
            width: 600,
            height: 1200,
            decoration: BoxDecoration(
              color: const Color(0xFFE0EDFF),
              borderRadius: BorderRadius.circular(24),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RegistrationForm(maxWidth: maxWidth),
                const SizedBox( height: 20),
                const Contact(maxWidth: 600),
              ],
            ),
          ),
        ),
      );
    }
  }
}
