import 'package:flutter/material.dart';
import '../atoms/form.dart';

class RegistrationForm extends StatelessWidget{
  const RegistrationForm({super.key});

  @override
  Widget build(BuildContext context) {
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
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(
          width: 530,
          height: 500,
          child: OTAForm(),
        ),
      ],
    );
  }
}
