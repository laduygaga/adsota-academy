import 'package:flutter/material.dart';
import '../molecules/course_summary.dart';
import '../molecules/course_content.dart';

class CourseTemplate extends StatelessWidget{
  final String title1;
  final String title2;
  final String avatar;
  final String courseImage;
  final String content;
  final String name;
  final String role;
  final bool isWideLayout;
  final bool isNarrowLayout;
  final bool isSmallLayout;
  const CourseTemplate({
    Key? key,
    required this.title1,
    required this.title2,
    required this.avatar,
    required this.name,
    required this.role,
    required this.courseImage,
    required this.content,
    required this.isWideLayout,
    required this.isNarrowLayout,
    required this.isSmallLayout,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[ 
          CourseSummary(
            title1: title1,
            title2: title2,
            avatar: avatar,
            content: content,
            name: name,
            role: role,
            isWideLayout: isWideLayout,
            isNarrowLayout: isNarrowLayout,
            isSmallLayout: isSmallLayout,
          ),
          SizedBox(height: isWideLayout ? 40 : isNarrowLayout ? 20 : 10),
          Image.asset(
            width: isWideLayout ? 1180 : isNarrowLayout ? 600 : 400,
            height: isWideLayout ? 639 : isNarrowLayout ? 319.5 : 213,
            courseImage,
            fit: BoxFit.cover,
          ),
          CourseContent(
            title: 'Nội dung khóa học',
            content: content,
          ),
        ]
      );
    }

}

