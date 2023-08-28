
import 'package:flutter/material.dart';

class Intro extends StatelessWidget{
  const Intro({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String text = "Adsota Academy là học viện đào tạo Marketing với mục tiêu giúp các\n doanh nghiệp tiếp cận marketing với tư duy là nền tảng về truyền thông,\n thương hiệu và tiếp thị số. Từ đó, có thể ứng dụng triển khai các chiến\n lược nhằm tối ưu kết quả kinh doanh và giúp thương hiệu cất cánh.";
    if (MediaQuery.of(context).size.width <= 600 ) {
      text = "Adsota Academy là học viện đào tạo Marketing với mục tiêu giúp các doanh nghiệp tiếp cận marketing với tư duy là nền tảng về truyền thông, thương hiệu và tiếp thị số. Từ đó, có thể ứng dụng triển khai các chiến lược nhằm tối ưu kết quả kinh doanh và giúp thương hiệu cất cánh.";
    }
    double maxWidth = MediaQuery.of(context).size.width;
    bool isWide = maxWidth > 1200;
    bool isNarrow = maxWidth > 600 && maxWidth < 1200;
    double titleFontSize =  isWide ? 64 : isNarrow ? 48 : 32;
    double contentFontSize = isWide ? 24 : isNarrow ? 18 : 16;
    double leftPadding = 16;
    double rightPadding = 16;
    return Container(
      width: isWide ? 1440 : isNarrow ? 1200 : 600,
      height: isWide ? 384 : isNarrow ? 334 : 364,
      color: const Color(0xFFFFFFFF),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text.rich(
            textAlign: TextAlign.center,
            TextSpan(
              text: "Giới thiệu về ",
              style: TextStyle(
                color: const Color(0xFF121825),
                fontSize: titleFontSize,
                fontWeight: FontWeight.bold,
                height: 1.8,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: "Adsota Academy",
                  style: TextStyle(
                    color: const Color(0xFF0353CC),
                    fontSize: titleFontSize,
                    fontWeight: FontWeight.bold,
                    height: 1.8,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: isWide ? 48 : isNarrow ? 32 : 24),
          Padding(
            padding: EdgeInsets.only(left: leftPadding, right: rightPadding),
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: const Color(0xFF121825),
                fontSize: contentFontSize,
                fontWeight: FontWeight.normal,
                height: 1.8,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
