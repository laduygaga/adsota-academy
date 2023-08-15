import 'package:flutter/material.dart';

class CourseValue extends StatelessWidget{
  final String courseValueTitle1;
  final String courseValueTitle2;
  final String courseValueContent1;
  final String courseValueContent2;
  const CourseValue({
    Key? key,
    required this.courseValueTitle1,
    required this.courseValueTitle2,
    required this.courseValueContent1,
    required this.courseValueContent2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center, // Center horizontally
      children: [
        // column 1 is container 610x646 with bg FACB28, text 'Sau khi học xong, người học sẽ:', with font size 404040, font weight bold, color 0253CC 
        Container(
          width: 610,
          height: 646,
          color: const Color(0xffFACB28),
          child: Padding(
            padding: const EdgeInsets.only(left: 130, top: 66),
            child: Text(
              'Sau khi học xong,\nngười học sẽ:',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Color(0xff0253CC),
              ),
            ),
          ),
        ),
        Column(
          children: [
            Container(
              width: 830,
              color: const Color(0xFFFFF6D7),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 22, top: 66, bottom: 26),
                    child: Text(
                      courseValueTitle1,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff0353CC),
                      ),
                    ),
                  ),
                  ColoredBox(
                    color: const Color(0xFF000000),
                    child: SizedBox(
                      width: 680,
                      height: 1,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 26, bottom: 44),
                    child: Text(
                      courseValueContent1,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff121825),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 830,
              color: const Color(0xFFFFFCF1),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 22, top: 66, bottom:26),
                    child: Text(
                      courseValueTitle2,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff0353CC),
                      ),
                    ),
                  ),
                  ColoredBox(
                    color: const Color(0xFF000000),
                    child: SizedBox(
                      width: 680,
                      height: 1,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 26, bottom: 44),
                    child: Text(
                      courseValueContent2,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff121825),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}


