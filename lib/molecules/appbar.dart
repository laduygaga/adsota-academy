import 'package:flutter/material.dart';

import '../atoms/button.dart';
import '../atoms/image.dart';
import '../atoms/text_underline_hover.dart';
import '../home_page.dart';


class MyAppBar extends StatefulWidget {
  final String logo;
  final double widthLogo;
  final double heightLogo;
  final double maxWidth;
  final String backgroundColor;
  final GlobalKey registerFormKey;
  final GlobalKey? introKey;
  final GlobalKey? teacherKey;
  final GlobalKey? courseKey;
  final GlobalKey? orientationKey;

  const MyAppBar({
    Key? key,
    required this.logo,
    required this.widthLogo,
    required this.heightLogo,
    required this.backgroundColor,
    required this.registerFormKey,
    this.introKey,
    this.teacherKey,
    this.courseKey,
    this.orientationKey,
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
        child: MouseRegion(
          cursor: SystemMouseCursors.click,
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyHomePage()),
              );
            },
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
                        fontWeight: FontWeight.w300,
                        color: Colors.white,
                        letterSpacing: 1,
                    ),
                  ),
                ],
              ),
              const SizedBox(width: 90),
              UnderlinedTextWithHover(
                onPress: () => {
                  _scrollToPosition(widget.introKey!.currentContext!)
                },
                text: "Giới Thiệu",
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
              const SizedBox(width: 50),
              UnderlinedTextWithHover(
                onPress: () => {
                  _scrollToPosition(widget.teacherKey!.currentContext!)
                },
                text: "Đội Ngũ Giảng Viên",
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
              const SizedBox(width: 50),
              UnderlinedTextWithHover(
                onPress: () => {
                  _scrollToPosition(widget.courseKey!.currentContext!)
                },
                text: "Khóa Học",
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
              const SizedBox(width: 50),
              UnderlinedTextWithHover(
                onPress: () => {
                  _scrollToPosition(widget.orientationKey!.currentContext!)
                },
                text: "Khóa học dành cho ai",
                style: const TextStyle(
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
                height: 40,
                radius: 51,
                bgColor: "0xFFFFFFFF",
                label: "Đăng Ký Ngay",
                onPressed: () => {
                  _scrollToPosition(widget.registerFormKey.currentContext!)
                }
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSmallLayout() {
      return Container(
        color: Color(int.parse(widget.backgroundColor)),
        child: MouseRegion(
          cursor: SystemMouseCursors.click,
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyHomePage()),
              );
            },
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
                        fontWeight: FontWeight.w300,
                        color: Colors.white,
                        letterSpacing: 1,
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Button(
                width: 120,
                height: 35,
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
        ),
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
