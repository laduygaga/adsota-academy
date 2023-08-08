import 'package:flutter/material.dart';

import '../atoms/button.dart';
import '../atoms/image.dart';
import '../atoms/text_underline_hover.dart';

class MyAppBar extends StatefulWidget {
  final String logo;
  final double widthLogo;
  final double heightLogo;
  final String backgroundColor;

  const MyAppBar({
    Key? key,
    required this.logo,
    required this.widthLogo,
    required this.heightLogo,
    required this.backgroundColor,

  }) : super(key: key);

  @override
  State<MyAppBar> createState() => _MyAppBarState();
}

class _MyAppBarState extends State<MyAppBar> {

  @override
  Widget build(BuildContext context) {
      return Container(
        color: Color(int.parse(widget.backgroundColor)),
        child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(width: 161.25),
            OTAImage(
              path: widget.logo,
              widthImage: widget.widthLogo,
              heightImage: widget.heightLogo,
            ),
            const SizedBox(width: 7.74),
            const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Adsota",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    letterSpacing: 2,
                    height: 1,
                ),
              ),
                Text(
                  "Academy",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w100,
                    color: Colors.white,
                    letterSpacing: 1,
                ),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(left: 90),
            child: const Row(
              children: [
                UnderlinedTextWithHover(
                  text: "Giới Thiệu",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
                SizedBox(width: 50),
                UnderlinedTextWithHover(
                  text: "Đội Ngũ Giảng Viên",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
                SizedBox(width: 50),
                UnderlinedTextWithHover(
                  text: "Khóa Học",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
                SizedBox(width: 50),
                UnderlinedTextWithHover(
                  text: "Khóa học dành cho ai",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(right: 161.25, left: 90),
            child: const Button(
              width: 180,
              height: 33,
              radius: 51,
              bgColor: "0xFFFFFFFF",
              label: "Đăng Ký Ngay",
            ),
          ),
        ],
      ),
    );
  }
}
