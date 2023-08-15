import 'package:flutter/material.dart';
import '../molecules/course_summary.dart';
import '../molecules/course_content.dart';
import '../molecules/course_value.dart';
import '../molecules/register_contact.dart';

class CourseTemplate extends StatelessWidget{
  final String title1;
  final String title2;
  final String avatar;
  final String courseImage;
  final String courseImageRefer;
  final String summaryContent;
  final String courseContent1;
  final String courseContent2;
  final String courseContent3;
  final String courseValueTitle1;
  final String courseValueTitle2;
  final String courseValueContent1;
  final String courseValueContent2;
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
    required this.courseImageRefer,
    required this.courseContent1,
    required this.courseContent2,
    required this.courseContent3,
    required this.courseValueTitle1,
    required this.courseValueTitle2,
    required this.courseValueContent1,
    required this.courseValueContent2,
    required this.summaryContent,
    required this.isWideLayout,
    required this.isNarrowLayout,
    required this.isSmallLayout,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children:[ 
          CourseSummary(
            title1: title1,
            title2: title2,
            avatar: avatar,
            summaryContent: summaryContent,
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
          SizedBox(height: isWideLayout ? 92 : isNarrowLayout ? 46 : 23),
          CourseContent(
            courseContent1: courseContent1,
            courseContent2: courseContent2,
            courseContent3: courseContent3,
          ),
          SizedBox(height: isWideLayout ? 60 : isNarrowLayout ? 30 : 15),
          CourseValue(
            courseValueTitle1: courseValueTitle1,
            courseValueTitle2: courseValueTitle2,
            courseValueContent1: courseValueContent1,
            courseValueContent2: courseValueContent2,
          ),
          const RegisterContact(),
          SizedBox(height: isWideLayout ? 58 : isNarrowLayout ? 29 : 14.5),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(),
                child: Text(
                  'Tham khảo khóa học\nkhác tại Adsota Academy',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff0253CC),
                  ),
                ),
              ),
              SizedBox(width: isWideLayout ? 200 : isNarrowLayout ? 100 : 50),
              Image.asset(
                width: isWideLayout ? 480 : isNarrowLayout ? 240 : 160,
                height: isWideLayout ? 265 : isNarrowLayout ? 132.5 : 88.3,
                courseImageRefer,
                fit: BoxFit.cover,
              ),
            ],
          ),
        ]
      );
    }

}

