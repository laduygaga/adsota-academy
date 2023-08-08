import 'package:flutter/material.dart';

class OTAOrientation extends StatelessWidget{
  const OTAOrientation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 176),
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
            SizedBox(width: 523,height: 175,
              child: Padding(
                padding: EdgeInsets.only(top: 33),
                child: Text.rich(
                  TextSpan(
                    text: "Các cán bộ quản lý, nhân viên trong doanh nghiệp có",
                    style: TextStyle(
                      color: Color(0xFF121825),
                      fontSize: 20,
                      fontWeight: FontWeight.w100,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: "mong muốn cải thiện tư duy marketing",
                        style: TextStyle(
                          color: Color(0xFF121825),
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: " và cập nhật các phương pháp xây dựng, ",
                        style: TextStyle(
                          color: Color(0xFF121825),
                          fontSize: 20,
                          fontWeight: FontWeight.w100,
                        ),
                      ),
                      TextSpan(
                        text: "quản trị thương hiệu (branding) và tiếp thị số (digital marketing)",
                        style: TextStyle(
                          color: Color(0xFF121825),
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: " và thực thi chiến lược.",
                        style: TextStyle(
                          color: Color(0xFF121825),
                          fontSize: 20,
                          fontWeight: FontWeight.w100,
                        ),
                      ),
                    ],
                  ),
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

