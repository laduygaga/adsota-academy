import 'package:flutter/material.dart';

import '../atoms/button.dart';
import '../atoms/image.dart';
import '../atoms/text.dart';

class MyAppBar extends StatefulWidget implements PreferredSizeWidget {
  final String logo;
  final double widthLogo;
  final double heightLogo;
  final String backgroundColor;
  final double toolbarHeight;

  const MyAppBar({
    Key? key,
    required this.logo,
    required this.widthLogo,
    required this.heightLogo,
    required this.backgroundColor,
    required this.toolbarHeight,

  }) : super(key: key);

  @override
  State<MyAppBar> createState() => _MyAppBarState();
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _MyAppBarState extends State<MyAppBar> {

  @override
  Widget build(BuildContext context) {
      return AppBar(
        toolbarHeight: widget.toolbarHeight,
        backgroundColor: Color(int.parse(widget.backgroundColor)),
        title: Row(
          children: [
            const Spacer(),
            OTAImage(
              path: widget.logo,
              widthImage: widget.widthLogo,
              heightImage: widget.heightLogo,
            ),
            const SizedBox(width: 10),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Adsota",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    letterSpacing: 2,
                  ),
                ),
                Text(
                  "Academy",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    color: Colors.white,
                    letterSpacing: 1,
                  ),
                ),
              ],
            ),
            const Spacer(),
            Row(
              children: [
                const UnderlinedTextWithHover(
                  text: "Giới Thiệu",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    color: Colors.white,
                    letterSpacing: 1,
                  ),
                ),
                SizedBox(width: MediaQuery.of(context).size.width * 0.05), 
                const UnderlinedTextWithHover(
                  text: "Đội Ngũ Giảng Viên",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    color: Colors.white,
                    letterSpacing: 1,
                  ),
                ),
                SizedBox(width: MediaQuery.of(context).size.width * 0.05), 
                const UnderlinedTextWithHover(
                  text: "Khóa Học",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    color: Colors.white,
                    letterSpacing: 1,
                  ),
                ),
                SizedBox(width: MediaQuery.of(context).size.width * 0.05), 
                const UnderlinedTextWithHover(
                  text: "Khóa học dành cho ai",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
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
            const Spacer(),
          ],
        ),
    );
  }
}
