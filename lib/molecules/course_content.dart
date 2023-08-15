import 'package:flutter/material.dart';
import '../atoms/course_content_form.dart';

class CourseContent extends StatelessWidget{
  final String courseContent1;
  final String courseContent2;
  final String courseContent3;
  const CourseContent({
    Key? key,
    required this.courseContent1,
    required this.courseContent2,
    required this.courseContent3,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
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
        SizedBox(width: 100),
        Column(
          mainAxisAlignment: MainAxisAlignment.center, // Center vertically
          children: [
            CourseContentForm(
              title: "Buổi 1:",
              courseContent: courseContent1,
            ),
            SizedBox(height: 21),
            CourseContentForm(
              title: "Buổi 2:",
              courseContent: courseContent2,
            ),
            SizedBox(height: 21),
            CourseContentForm(
              title: "Buổi 3:",
              courseContent: courseContent3,
            ),
          ],
        ),
      ],
    );
  }
}


