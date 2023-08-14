import 'package:flutter/material.dart';
import '../atoms/course_content_form.dart';

class CourseContent extends StatelessWidget{
  final String title;
  final String content;
  const CourseContent({
    Key? key,
    required this.title,
    required this.content,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Row(
          mainAxisAlignment: MainAxisAlignment.center, // Center horizontally
          crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Text(
            'Nội dung khóa học',
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: Color(0xFF0353CC),
            ),
          ),
          SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CourseContentForm(
                  title: title,
                  content: content,
                ),
              ],
            ),
          ),
        ],
      ),
  );
  }
}


