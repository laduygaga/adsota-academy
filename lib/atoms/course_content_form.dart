import 'package:flutter/material.dart';

class CourseContentForm extends StatelessWidget{
  final double? scale;
  final String? title;
  final String? courseContent;
  const CourseContentForm({
    Key? key,
    this.scale,
    this.title,
    this.courseContent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double fontSize = 16;
    // if (scale < 890 / 1200) {
    //   fontSize = 16;
    // }
    return Container(
      width: 680 * scale!,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: const Color(0xFF0353CC), width: 1),
      ),
      child: Column(
        children: [
          Container(
            width: 680 * scale!,
            height: 43 * scale!,
            decoration: const BoxDecoration(
              color: Color(0xFF0353CC),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8),
                topRight: Radius.circular(8),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.only(left: 21 * scale!, top: 8 * scale!),
              child: Text(
                title!,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: fontSize,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          Container(
            width: 680 * scale!,
            padding: EdgeInsets.all(20 * scale!),
            child: Text(
              courseContent!,
              style: TextStyle(
                color: const Color(0xFF4F4F4F),
                fontSize: fontSize,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    );
  }

}
