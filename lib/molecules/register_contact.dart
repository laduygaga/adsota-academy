
import 'package:flutter/material.dart';

import '../molecules/register_form.dart';
import '../molecules/contact.dart';

class RegisterContact extends StatelessWidget {
  const RegisterContact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double maxWidth = MediaQuery.of(context).size.width;
    if (maxWidth > 800) {
      return Container(
        padding: EdgeInsets.only(top: 111 * maxWidth / 1440, bottom: 111 * maxWidth / 1440),
        width: maxWidth,
        color: const Color(0xFFF8FBFF),
        child: SizedBox(
          width: maxWidth,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RegistrationForm(maxWidth: maxWidth),
              Contact(maxWidth: maxWidth),
            ],
          ),
        ),
      );
    } else {
      return Container(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 32, bottom: 32),
        width: maxWidth,
        color: const Color(0xFFF8FBFF),
        child: SizedBox(
          width: maxWidth,
          child: Center(
            child: Container(
              width: 600,
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
        ),
      );
    }
  }
}
