import 'package:flutter/material.dart';
import './button.dart';

class CourseCard extends StatelessWidget{
  final String? title;
  final String? image;
  final String? content;
  final double? scale;
  final VoidCallback? onViewDetailsPressed; // Add this callback
  const CourseCard({
    Key? key,
    this.title,
    this.image,
    this.content,
    this.scale,
    this.onViewDetailsPressed, // Add this callback
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 380 * scale!,
      height: 468 * scale!,
      decoration: BoxDecoration(
        color: const Color(0xFFFFFFFF),
        borderRadius: BorderRadius.circular(24),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            width: 380 * scale!,
            image!,
            fit: BoxFit.fitWidth,
          ),
          SizedBox(height: 32.21 * scale!),
          Text(
          title!,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: const Color(0xFF121825),
            fontSize: 26 * scale!,
            fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 16 * scale!),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16 * scale!),
            child: Text(
              content!,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: const Color(0xFF121825),
                fontSize: 18 * scale!,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          SizedBox(height: 16 * scale!),
          Button(
            width: 180 * scale! + 8,
            height: 33 * scale! + 8,
            label: "Chi Tiết Khóa Học",
            bgColor: "0xFF0353CC",
            labelColor: "0xFFFFFFFF",
            labelSize: 16 * scale!,
            radius: 51,
            onPressed: onViewDetailsPressed, // Add this callback
          ),
        ],
      ),
    );
  }
}
