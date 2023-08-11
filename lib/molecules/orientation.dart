import 'package:flutter/material.dart';

class OTAOrientation extends StatelessWidget{
  const OTAOrientation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        bool isWideLayout = constraints.maxWidth >= 1440;
        bool isNarrowLayout = constraints.maxWidth > 600 && constraints.maxWidth < 1440;
        bool isSmallLayout = constraints.maxWidth <= 600;
        double titleFontSize = isWideLayout ? 64 : (isNarrowLayout ? 55 : 45);
        double contentFontSize = isWideLayout ? 20 : (isNarrowLayout ? 16 : 14);
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 Padding(
                   padding: const EdgeInsets.only(),
                  child: Text(
                    "Khóa học dành\ncho ai?",
                    style: TextStyle(
                      color: const Color(0xFF0353CC),
                      fontSize: titleFontSize,
                      fontWeight: FontWeight.bold,
                      height: 1,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Text.rich(
                    TextSpan(
                      text: "Các cán bộ quản lý, nhân viên trong doanh nghiệp có\n",
                      style: TextStyle(
                        color: const Color(0xFF121825),
                        fontSize: contentFontSize,
                        fontWeight: FontWeight.w100,
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
                          text: " và cập nhật\n các phương pháp xây dựng, ",
                          style: TextStyle(
                            color: const Color(0xFF121825),
                            fontSize: contentFontSize,
                            fontWeight: FontWeight.w100,
                            height: 1.5,
                          ),
                        ),
                        TextSpan(
                          text: "quản trị thương hiệu\n (branding) và tiếp thị số (digital marketing)",
                          style: TextStyle(
                            color: const Color(0xFF121825),
                            fontSize: contentFontSize,
                            fontWeight: FontWeight.bold,
                            height: 1.5,
                          ),
                        ),
                        TextSpan(
                          text: " và thực\n thi chiến lược.",
                          style: TextStyle(
                            color: const Color(0xFF121825),
                            fontSize: contentFontSize,
                            fontWeight: FontWeight.w100,
                            height: 1,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                if (isSmallLayout)
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Image.asset(
                      width: constraints.maxWidth * 0.7,
                      "assets/images/smiling-boy.png",
                      fit: BoxFit.contain,
                    ),
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
      },
    );
  }
}

