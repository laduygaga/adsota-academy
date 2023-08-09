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

    // Determine the screen width
    double screenWidth = MediaQuery.of(context).size.width;

    if (screenWidth > 1200) {
      return _buildWideLayout();
    // } else if (screenWidth > 600 && screenWidth <= 1200) {
    //   return _buildNarrowLayout();
    } else {
      return _buildSmallLayout();
    }
  }

  Widget _buildWideLayout() {
      return Container(
        color: Color(int.parse(widget.backgroundColor)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
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
          const SizedBox(width: 90),
          const UnderlinedTextWithHover(
            text: "Giới Thiệu",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
          const SizedBox(width: 50),
          const UnderlinedTextWithHover(
            text: "Đội Ngũ Giảng Viên",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
          const SizedBox(width: 50),
          const UnderlinedTextWithHover(
            text: "Khóa Học",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
          const SizedBox(width: 50),
          const UnderlinedTextWithHover(
            text: "Khóa học dành cho ai",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            width: 90,
          ),
          const Button(
            width: 180,
            height: 33,
            radius: 51,
            bgColor: "0xFFFFFFFF",
            label: "Đăng Ký Ngay",
          ),
        ],
      ),
    );
  }

  // keep logo, title, button in the same row, but put the rest in a menu
  Widget _buildNarrowLayout() {
      return Container(
        color: Color(int.parse(widget.backgroundColor)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
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
          const SizedBox(width: 90),
          const UnderlinedTextWithHover(
            text: "Giới Thiệu",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
          const SizedBox(width: 50),
          const UnderlinedTextWithHover(
            text: "Đội Ngũ Giảng Viên",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
          const SizedBox(width: 50),
          const UnderlinedTextWithHover(
            text: "Khóa Học",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
          const SizedBox(width: 50),
          const UnderlinedTextWithHover(
            text: "Khóa học dành cho ai",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            width: 90,
          ),
          const Button(
            width: 180,
            height: 33,
            radius: 51,
            bgColor: "0xFFFFFFFF",
            label: "Đăng Ký Ngay",
          ),
        ],
      ),
    );
  }

  Widget _buildSmallLayout() {
      return Container(
        color: Color(int.parse(widget.backgroundColor)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
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
          const Spacer(),
          const Button(
            width: 180,
            height: 33,
            radius: 51,
            bgColor: "0xFFFFFFFF",
            label: "Đăng Ký Ngay",
          ),
        ],
      ),
    );
  }
    
    
}
