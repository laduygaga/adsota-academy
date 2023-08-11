import 'package:flutter/material.dart';

class OTACard extends StatelessWidget{
  final String? title;
  final String? image;
  final String? content;
  final double? scale;
  const OTACard({
    Key? key,
    this.title,
    this.image,
    this.content,
    this.scale,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280 * scale!,
      height: 412 * scale!,
      decoration: BoxDecoration(
        color: const Color(0xFFFACB28),
        borderRadius: BorderRadius.circular(24),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title!,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: const Color(0xFF121825),
              fontSize: 20 * scale! + 2,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          Image.asset(
            image!,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 10),
          Text(
            content!,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: const Color(0xFF121825),
              fontSize: 16 * scale! + 2,
              fontWeight: FontWeight.w100,
            ),
          ),
        ],
      ),
    );
  }
}
