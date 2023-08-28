import 'package:flutter/material.dart';

import '../atoms/button.dart';
import '../atoms/image.dart';
import '../atoms/text_underline_hover.dart';

class MyAppBar extends StatefulWidget {
  final String logo;
  final double widthLogo;
  final double heightLogo;
  final double maxWidth;
  final String backgroundColor;
  final GlobalKey registerFormKey;

  const MyAppBar({
    Key? key,
    required this.logo,
    required this.widthLogo,
    required this.heightLogo,
    required this.backgroundColor,
    required this.registerFormKey,
    required this.maxWidth,

  }) : super(key: key);

  @override
  State<MyAppBar> createState() => _MyAppBarState();
}

class _MyAppBarState extends State<MyAppBar> {

  @override
  Widget build(BuildContext context) {


    if (widget.maxWidth >= 1200) {
      return _buildWideLayout();
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
          Button(
            width: 180,
            height: 33,
            radius: 51,
            bgColor: "0xFFFFFFFF",
            label: "Đăng Ký Ngay",
            onPressed: () => {
              _scrollToPosition(widget.registerFormKey.currentContext!)
            }
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
          Button(
            width: 120,
            height: 25,
            radius: 51,
            bgColor: "0xFFFFFFFF",
            label: "Đăng Ký Ngay",
            labelSize: 12,
            onPressed: () => {
              _scrollToPosition(widget.registerFormKey.currentContext!)
              }
          ),
        ],
      ),
    );
  }
    
  void _scrollToPosition(BuildContext context) {
    Scrollable.ensureVisible(
      context,
      duration: const Duration(
        milliseconds: 500,
      ),
    );
  }
    
}
