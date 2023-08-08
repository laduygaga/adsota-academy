import 'package:flutter/material.dart';
import './button.dart';

class CourseCard extends StatelessWidget{
  final String? title;
  final String? image;
  final String? content;
  const CourseCard({Key? key, this.title, this.image, this.content}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 380,
      height: 468,
      decoration: BoxDecoration(
        color: const Color(0xFFFFFFFF),
        borderRadius: BorderRadius.circular(24),
      ),
      child: Column(
        children: [
          Image.asset(
            image!,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 32.21),
          Text(
          title!,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Color(0xFF121825),
            fontSize: 24,
            fontWeight: FontWeight.bold,
            letterSpacing: 1,
            ),
          ),
          const SizedBox(height: 16),
          Text(
            content!,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Color(0xFF121825),
              fontSize: 16,
              fontWeight: FontWeight.w100,
              letterSpacing: 2,
            ),
          ),
          const SizedBox(height: 16),
          const Button(
            width: 180,
            height: 33,
            label: "Chi Tiết Khóa Học",
            bgColor: "0xFF0353CC",
            labelColor: "0xFFFFFFFF",
            labelSize: 14,
            radius: 51,
          ),
        ],
      ),
    );
  }
}
