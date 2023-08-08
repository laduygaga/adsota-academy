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
        SizedBox(
          width: 663,
          height: 600,
          child: Column(
            children: [
              Container(
                width: 663,
                height: 225,
                margin: const EdgeInsets.only(left: 110, top: 40),
                child: const Column(
                  children: [
                    SizedBox(
                      width: 663,
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
                      width: 663,
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
                      width: 663,
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
                  ],
                ),
              ),
              Container(
                width: 663,
                height: 150,
                margin: const EdgeInsets.only(left: 110, top: 50),
                child: const Text(
                  "Trong thế giới liên tục đối thay, học tập - đổi mới tư duy là cách bền vững nhất để con người và doanh nghiệp phát triển.",
                  style: TextStyle(
                    color: Color(0xFFFFFFFF),
                    fontSize: 24,
                    fontWeight: FontWeight.w100,
                  ),
                ),
              ),
              Container(
                width: 314,
                height: 71,
                margin: const EdgeInsets.only(top: 50, right: 120),
                child: const Button(
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
              ),
            ],
          ),
        ),
        const SizedBox(width: 200,),
        Container(
          width: 527,
          height: 511,
          margin: const EdgeInsets.only(top: 58),
          child: Image.asset(
            "assets/images/asian-girl.png",
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }
}
