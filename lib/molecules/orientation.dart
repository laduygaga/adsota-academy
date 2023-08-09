import 'package:flutter/material.dart';

class OTAOrientation extends StatelessWidget{
  const OTAOrientation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 488,
              height: 124,
              child: Text(
                "Khóa học dành cho ai?",
                style: TextStyle(
                  color: Color(0xFF0353CC),
                  fontSize: 64,
                  fontWeight: FontWeight.bold,
                  height: 1,
                ),
              ),
            ),
           SizedBox(height: 33),
           SizedBox(width: 523,height: 175,
             child: Text.rich(
                TextSpan(
                  text: "Các cán bộ quản lý, nhân viên trong doanh nghiệp có",
                  style: TextStyle(
                    color: Color(0xFF121825),
                    fontSize: 20,
                    fontWeight: FontWeight.w100,
                    height: 1.5,
                    wordSpacing: 1,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: "mong muốn cải thiện tư duy marketing",
                      style: TextStyle(
                        color: Color(0xFF121825),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        height: 1.5,
                      ),
                    ),
                    TextSpan(
                      text: " và cập nhật các phương pháp xây dựng, ",
                      style: TextStyle(
                        color: Color(0xFF121825),
                        fontSize: 20,
                        fontWeight: FontWeight.w100,
                        height: 1.5,
                      ),
                    ),
                    TextSpan(
                      text: "quản trị thương hiệu (branding) và tiếp thị số (digital marketing)",
                      style: TextStyle(
                        color: Color(0xFF121825),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        height: 1.5,
                      ),
                    ),
                    TextSpan(
                      text: " và thực thi chiến lược.",
                      style: TextStyle(
                        color: Color(0xFF121825),
                        fontSize: 20,
                        fontWeight: FontWeight.w100,
                        height: 1.5,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        SizedBox(width: 505, height: 595,
          child: Image.asset(
            "assets/images/smiling-boy.png",
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }
}

