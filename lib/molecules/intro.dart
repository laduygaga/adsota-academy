
import 'package:flutter/material.dart';

class Intro extends StatelessWidget{
  const Intro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        bool isWide = constraints.maxWidth > 1200;
        bool isNarrow = constraints.maxWidth > 600 && constraints.maxWidth < 1200;
        double titleFontSize =  isWide ? 64 : isNarrow ? 48 : 32;
        double contentFontSize = isWide ? 20 : isNarrow ? 16 : 14;
        double leftPadding = isWide ? 359 : isNarrow ? 150 : 100;
        double rightPadding = isWide ? 250 : isNarrow ? 150: 100;
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(left: leftPadding, right: rightPadding),
              child: Text.rich(
                TextSpan(
                  text: "Giới thiệu về ",
                  style: TextStyle(
                    color: const Color(0xFF121825),
                    fontSize: titleFontSize,
                    fontWeight: FontWeight.bold,
                    height: 1.2,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: "Adsota Academy",
                      style: TextStyle(
                        color: const Color(0xFF0353CC),
                        fontSize: titleFontSize,
                        fontWeight: FontWeight.bold,
                        height: 1.2,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: isWide ? 48 : isNarrow ? 32 : 16),
            Padding(
              padding: EdgeInsets.only(left: leftPadding, right: rightPadding),
              child: Text(
                "Adsota Academy là học viện đào tạo Marketing với mục tiêu giúp các doanh nghiệp tiếp cận marketing với tư duy là nền tảng về truyền thông, thương hiệu và tiếp thị số. Từ đó, có thể ứng dụng triển khai các chiến lược nhằm tối ưu kết quả kinh doanh và giúp thương hiệu cất cánh.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: const Color(0xFF121825),
                  fontSize: contentFontSize,
                  fontWeight: FontWeight.w100,
                  height: 1.5,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
