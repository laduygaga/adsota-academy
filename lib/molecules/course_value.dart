import 'package:flutter/material.dart';

class CourseValue extends StatelessWidget {
  final double scale;
  final String courseValueTitle1;
  final String courseValueTitle2;
  final String courseValueContent1;
  final String courseValueContent2;
  const CourseValue({
    Key? key,
    required this.scale,
    required this.courseValueTitle1,
    required this.courseValueTitle2,
    required this.courseValueContent1,
    required this.courseValueContent2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (scale > 890/1200) {
      return Container(
        padding: const EdgeInsets.only(left: 16, right: 16),
        width: 1200 * scale,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: DecoratedBox(
                decoration: const BoxDecoration(
                  color: Color(0xffFACB28),
                ),
                child: SizedBox(
                  width: 610 * scale,
                  height: 646 * scale,
                  child: Padding(
                    padding: EdgeInsets.only(left: 130 * scale, top: 66 * scale),
                    child: const Text(
                      'Sau khi học xong,\nngười học sẽ:',
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff0253CC),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  _buildCourseValueWidget(
                    scale,
                    0,
                    courseValueTitle1,
                    courseValueContent1,
                    0xFFFFF6D7,
                  ),
                  _buildCourseValueWidget(
                    scale,
                    0,
                    courseValueTitle2,
                    courseValueContent2,
                    0xFFFFFCF1,
                  ),
                ],
              ),
            ),
          ],
        ),
      );
      } else {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: DecoratedBox(
              decoration: const BoxDecoration(
                color: Color(0xffFACB28),
              ),
              child: SizedBox(
                width: scale * 1200 - 30,
                child: Padding(
                  padding: EdgeInsets.only(left: 130 * scale, top: 74 * scale, bottom: 74 * scale),
                  child: const Text(
                    'Sau khi học xong,\nngười học sẽ:',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff0253CC),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Column(
            children: [
              _buildCourseValueWidget(
                1,
                16,
                courseValueTitle1,
                courseValueContent1,
                0xFFFFF6D7,
              ),
              _buildCourseValueWidget(
                1,
                16,
                courseValueTitle2,
                courseValueContent2,
                0xFFFFFCF1,
              ),
            ],
          ),
        ],
      );
    }
  }

  Widget _buildCourseValueWidget(
    double scale,
    double margin,
    String title,
    String content,
    int backgroundColor,
  ) {
    return Card(
      // Use Card for each section
      color: Color(backgroundColor),
      shape: const RoundedRectangleBorder( // Set a custom shape with sharp corners
        borderRadius: BorderRadius.zero,
      ),
      margin: EdgeInsets.only(
        left: margin,
        right: margin,
      ),
      child: Container(
        width: 830 * scale,
        padding: EdgeInsets.symmetric(
          horizontal: 22 * scale,
          vertical: 66 * scale,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xff0353CC),
              ),
            ),
            SizedBox(height: 26 * scale),
            const ColoredBox(
              color: Color(0xFF000000),
              child: SizedBox(
                width: 680,
                height: 1,
              ),
            ),
            SizedBox(height: 14 * scale),
            Text(
              content,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Color(0xff121825),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

