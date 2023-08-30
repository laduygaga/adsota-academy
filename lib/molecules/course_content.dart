import 'package:flutter/material.dart';
import '../atoms/course_content_form.dart';

class CourseContent extends StatelessWidget{
  final double scale;
  final String courseContentTitle1;
  final String courseContentTitle2;
  final String? courseContentTitle3;
  final String courseContent1;
  final String courseContent2;
  final String? courseContent3;
  const CourseContent({
    Key? key,
    required this.scale,
    required this.courseContentTitle1,
    required this.courseContentTitle2,
    this.courseContentTitle3,
    required this.courseContent1,
    required this.courseContent2,
    this.courseContent3,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (scale > 794 / 1200) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center, // Center horizontally
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Nội dung khóa học',
            style: TextStyle(
              fontSize: 40 * scale,
              fontWeight: FontWeight.bold,
              color: const Color(0xFF0353CC),
            ),
          ),
          SizedBox(width: 100 * scale),
          Column(
            mainAxisAlignment: MainAxisAlignment.center, // Center vertically
            children: [
              CourseContentForm(
                scale: scale,
                title: courseContentTitle1,
                courseContent: courseContent1,
              ),
              SizedBox(height: 21 * scale),
              CourseContentForm(
                scale: scale,
                title: courseContentTitle2,
                courseContent: courseContent2,
              ),
              SizedBox(height: 21 * scale),
              if (courseContentTitle3 != null && courseContent3 != null)
              CourseContentForm(
                scale: scale,
                title: courseContentTitle3,
                courseContent: courseContent3,
              ),
            ],
          ),
        ],
      );
    } else {
      return Padding(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Center horizontally
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Nội dung khóa học',
              style: TextStyle(
                fontSize: 40 * 0.7,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0353CC),
              ),
            ),
            const SizedBox(height: 30),
            Column(
              mainAxisAlignment: MainAxisAlignment.center, // Center vertically
              children: [
                CourseContentForm(
                  scale: 0.7,
                  title: courseContentTitle1,
                  courseContent: courseContent1,
                ),
                const SizedBox(height: 21),
                CourseContentForm(
                  scale: 0.7,
                  title: courseContentTitle2,
                  courseContent: courseContent2,
                ),
                const SizedBox(height: 21),
                if (courseContentTitle3 != null && courseContent3 != null)
                CourseContentForm(
                  scale: 0.7,
                  title: courseContentTitle3,
                  courseContent: courseContent3,
                ),
              ],
            ),
          ],
        ),
      );
    }
  }
}


