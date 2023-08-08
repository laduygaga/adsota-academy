import 'package:flutter/material.dart';

class OTACard extends StatelessWidget{
  final String? title;
  final String? image;
  final String? content;
  const OTACard({Key? key, this.title, this.image, this.content}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280,
      height: 412,
      decoration: BoxDecoration(
        color: const Color(0xFFFACB28),
        borderRadius: BorderRadius.circular(24),
      ),
      child: Column(
        children: [
          const SizedBox(height: 42),
          Text(
            title!,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Color(0xFF121825),
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 40),
          Image.asset(
            image!,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 56),
          Text(
            content!,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Color(0xFF121825),
              fontSize: 16,
              fontWeight: FontWeight.w100,
            ),
          ),
        ],
      ),
    );
  }
}
