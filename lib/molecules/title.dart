import 'package:flutter/material.dart';
import '../atoms/button.dart';

class OTATitle extends StatelessWidget{
  const OTATitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 75,
              child: Text(
                "LEARN",
                style: TextStyle(
                  color: Color(0xFFFFFFFF),
                  fontSize: 70,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 75,
              child: Text(
                "UNLEARN",
                style: TextStyle(
                  color: Color(0xFFFACB28),
                  fontSize: 70,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 75,
              child: Text(
                "RELEARN",
                style: TextStyle(
                  color: Color(0xFFFFFFFF),
                  fontSize: 70,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            SizedBox(
              width: 592,
              height: 123,
              child:
              Text(
              "Trong thế giới liên tục đối thay, học tập - đổi mới tư duy là cách bền vững nhất để con người và doanh nghiệp phát triển.",
              style: TextStyle(
                color: Color(0xFFFFFFFF),
                fontSize: 24,
                fontWeight: FontWeight.w100,
                ),
              ),
            ),
            SizedBox(
              height: 76,
            ),
            Button(
                width: 314,
                height: 71,
                label: "Đăng ký ngay",
                bgColor: "0xFFFACB28",
                labelColor: "0xFF0353CC",
                labelSize: 24,
                radius: 51,
                iconPath: "assets/images/arrow.svg",
                iconHeight: 30,
                iconWidth: 16,
                spaces: 30,
                onPressed: null,
              ),
          ],
        ),
        Image.asset(
          "assets/images/asian-girl.png",
          fit: BoxFit.cover,
        ),
      ],
    );
  }
}
