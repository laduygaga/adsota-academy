import 'package:flutter/material.dart';

class OTAOrientation extends StatelessWidget{
  final double maxWidth;
  const OTAOrientation({
    Key? key,
    required this.maxWidth,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isWideLayout = maxWidth >= 1440;
    bool isNarrowLayout = maxWidth > 800 && maxWidth < 1440;
    bool isSmallLayout = maxWidth <= 800;
    double titleFontSize = isWideLayout ? 64 : (isNarrowLayout ? 55 : 45);
    double contentFontSize = isWideLayout ? 20 : (isNarrowLayout ? 20: 20);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Khóa học dành\ncho ai?",
              style: TextStyle(
                color: const Color(0xFF0353CC),
                fontSize: titleFontSize,
                fontWeight: FontWeight.bold,
                height: 1.2,
              ),
            ),
            SizedBox(
              width: isWideLayout? 523 : (isNarrowLayout ? 523 * maxWidth/1440 : maxWidth * 0.8),
              child:Text.rich(
                TextSpan(
                  text: "Các cán bộ quản lý, nhân viên trong doanh nghiệp có",
                  style: TextStyle(
                    color: const Color(0xFF121825),
                    fontSize: contentFontSize,
                    fontWeight: FontWeight.normal,
                    height: 1.5,
                    wordSpacing: 1,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: "mong muốn cải thiện tư duy marketing",
                      style: TextStyle(
                        color: const Color(0xFF121825),
                        fontSize: contentFontSize,
                        fontWeight: FontWeight.bold,
                        height: 1.5,
                      ),
                    ),
                    TextSpan(
                      text: " và cập nhật các phương pháp xây dựng, ",
                      style: TextStyle(
                        color: const Color(0xFF121825),
                        fontSize: contentFontSize,
                        fontWeight: FontWeight.normal,
                        height: 1.5,
                      ),
                    ),
                    TextSpan(
                      text: "quản trị thương hiệu (branding) và tiếp thị số (digital marketing)",
                      style: TextStyle(
                        color: const Color(0xFF121825),
                        fontSize: contentFontSize,
                        fontWeight: FontWeight.bold,
                        height: 1.5,
                      ),
                    ),
                    TextSpan(
                      text: " và thực thi chiến lược.",
                      style: TextStyle(
                        color: const Color(0xFF121825),
                        fontSize: contentFontSize,
                        fontWeight: FontWeight.normal,
                        height: 1,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            if (isSmallLayout)
            const SizedBox(height: 20),
            if (isSmallLayout)
            Image.asset(
                width: maxWidth * 0.7,
                "assets/images/smiling-boy.png",
                fit: BoxFit.contain,
              ),
          ],
        ),
        if (isWideLayout || isNarrowLayout)
        Image.asset(
          width: isWideLayout ? 505 : (isNarrowLayout ? 505 * 0.6 : 505 * 0.8),
          height: isWideLayout ? 595 : (isNarrowLayout ? 595 * 0.6 : 595 * 0.8),
          "assets/images/smiling-boy.png",
          fit: BoxFit.contain,
        ),
      ],
    );
  }
}

