
import 'package:flutter/material.dart';

class Intro extends StatelessWidget{
  const Intro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 60),
          child: Text.rich(
            TextSpan(
              text: "Giới thiệu về ",
              style: TextStyle(
                color: Color(0xFF121825),
                fontSize: 64,
                fontWeight: FontWeight.bold,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: "Adsota Academy",
                  style: TextStyle(
                    color: Color(0xFF0353CC),
                    fontSize: 64,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 35),
        SizedBox(height: 136, width: 722,
          child: Text(
            "Adsota Academy là học viện đào tạo Marketing với mục tiêu giúp các doanh nghiệp tiếp cận marketing với tư duy là nền tảng về truyền thông, thương hiệu và tiếp thị số. Từ đó, có thể ứng dụng triển khai các chiến lược nhằm tối ưu kết quả kinh doanh và giúp thương hiệu cất cánh.",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFF121825),
              fontSize: 20,
              fontWeight: FontWeight.w100,
              letterSpacing: 1,
            ),
          ),
        ),
      ],
    );
  }
}
