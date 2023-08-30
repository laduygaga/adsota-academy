import 'package:flutter/material.dart';
import '../molecules/course_summary.dart';
import '../molecules/course_content.dart';
import '../molecules/course_value.dart';
import '../molecules/register_contact.dart';
import '../molecules/course_reference.dart';

class CourseTemplate extends StatelessWidget{
  final double scale;
  final String title1;
  final String title2;
  final String avatar1;
  final String? avatar2;
  final String courseImage;
  final String courseImageRefer;
  final String summaryContent;
  final String courseContent1;
  final String courseContent2;
  final String courseContent3;
  final String courseContentTitle1;
  final String courseContentTitle2;
  final String courseContentTitle3;
  final String courseValueTitle1;
  final String courseValueTitle2;
  final String courseValueContent1;
  final String courseValueContent2;
  final String? courseValueSubContent1;
  final String? courseValueSubContent2;
  final GlobalKey registerFormKey;
  final String name1;
  final String? name2;
  final String role1;
  final String? role2;
  const CourseTemplate({
    Key? key,
    required this.scale,
    required this.title1,
    required this.title2,
    required this.avatar1,
    this.avatar2,
    required this.name1,
    this.name2,
    required this.role1,
    this.role2,
    required this.courseImage,
    required this.courseImageRefer,
    required this.courseContent1,
    required this.courseContent2,
    required this.courseContent3,
    required this.courseContentTitle1,
    required this.courseContentTitle2,
    required this.courseContentTitle3,
    required this.courseValueTitle1,
    required this.courseValueTitle2,
    required this.courseValueContent1,
    this.courseValueSubContent1,
    this.courseValueSubContent2,
    required this.courseValueContent2,
    required this.summaryContent,
    required this.registerFormKey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children:[ 
          if (courseImageRefer == "assets/images/branding-mkt-3.png")
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Image.asset(
              width: 1180 * scale,
              height: 663 * scale,
              courseImage,
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(height: 105 * scale),
          CourseSummary(
            scale: scale,
            title1: title1,
            title2: title2,
            avatar1: avatar1,
            avatar2: avatar2,
            summaryContent: summaryContent,
            name1: name1,
            name2: name2,
            role1: role1,
            role2: role2,
          ),
          SizedBox(height: 68 * scale),
          if (courseImageRefer == "assets/images/digital-mkt-3.png")
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Image.asset(
              width: 1180 * scale,
              height: 663 * scale,
              courseImage,
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(height: 92 * scale),
          if (courseContent3 == "" ) 
          CourseContent(
            scale: scale,
            courseContent1: courseContent1,
            courseContent2: courseContent2,
            courseContentTitle1: courseContentTitle1,
            courseContentTitle2: courseContentTitle2,
          ) else
          CourseContent(
            scale: scale,
            courseContent1: courseContent1,
            courseContent2: courseContent2,
            courseContent3: courseContent3,
            courseContentTitle1: courseContentTitle1,
            courseContentTitle2: courseContentTitle2,
            courseContentTitle3: courseContentTitle3,
          ),
          SizedBox(height: 60 * scale),
          CourseValue(
            scale: scale,
            courseValueTitle1: courseValueTitle1,
            courseValueTitle2: courseValueTitle2,
            courseValueContent1: courseValueContent1,
            courseValueContent2: courseValueContent2,
            courseValueSubContent1: courseValueSubContent1,
            courseValueSubContent2: courseValueSubContent2,
          ),
          SizedBox(height: 60 * scale),
          RegisterContact(key: registerFormKey),
          SizedBox(height: 60 * scale),
          CourseReference(
            scale: scale,
            courseImageRefer: courseImageRefer,
          ),
          SizedBox(height: 60 * scale),
        ]
      );
    }

}

