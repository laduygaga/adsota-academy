import 'package:flutter/material.dart';
import '../pages/desktop2.dart';
import '../pages/desktop3.dart';

class CourseReference extends StatelessWidget {
  final String courseImageRefer;
  final double scale;
  const CourseReference({
    Key? key,
    required this.courseImageRefer,
    required this.scale,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (scale > 800 / 1200) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(),
            child: Text(
              'Tham khảo khóa học\nkhác tại Adsota Academy',
              style: TextStyle(
                fontSize: 40 * scale,
                fontWeight: FontWeight.bold,
                color: const Color(0xff0253CC),
              ),
            ),
          ),
          SizedBox(width: 100 * scale),
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              onTap: () {
                if (courseImageRefer == "assets/images/branding-mkt-3.png") {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Desktop2Page()),
                  );
                } else  {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Desktop3Page()),
                  );
                }
              },
              child: Image.asset(
                width: 480 * scale,
                height: 265 * scale,
                courseImageRefer,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      );
    } else {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Tham khảo khóa học\nkhác tại Adsota Academy',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Color(0xff0253CC),
              ),
            ),
            SizedBox(height: 100 * scale),
            MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                onTap: () {
                  if (courseImageRefer == "assets/images/branding-mkt-3.png") {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Desktop2Page()),
                    );
                  } else  {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Desktop3Page()),
                    );
                  }
                },
                child: Image.asset(
                  width: scale * 1200 * 0.9,
                  courseImageRefer,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 100 * scale),
          ],
        ),
      );
    }
  }
}
