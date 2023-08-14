import 'package:flutter/material.dart';

class CourseSummary extends StatelessWidget{
  final String title1;
  final String title2;
  final String content;
  final String avatar;
  final String name;
  final String role;
  final bool isWideLayout;
  final bool isNarrowLayout;
  final bool isSmallLayout;
  const CourseSummary({
    Key? key,
    required this.title1,
    required this.title2,
    required this.avatar,
    required this.name,
    required this.role,
    required this.content,
    required this.isWideLayout,
    required this.isNarrowLayout,
    required this.isSmallLayout,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double titleFontSize =  isWideLayout ? 40 : isNarrowLayout ? 32 : 24;
    double contentFontSize = isWideLayout ? 16 : isNarrowLayout ? 14 : 12;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(right: isWideLayout ? 16.0 : 0),
              child: Text.rich(
                TextSpan(
                  text: title1,
                  style: TextStyle(
                    color: const Color(0xFFFACB28),
                    fontSize: titleFontSize,
                    fontWeight: FontWeight.bold,
                    height: 1.2,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: title2,
                      style: TextStyle(
                        color: const Color(0xFF0253CC),
                        fontSize: titleFontSize,
                        fontWeight: FontWeight.bold,
                        height: 1.8,
                      ),
                    ),
                    TextSpan(
                      text: content,
                      style: TextStyle(
                        color: const Color(0xFF121825),
                        fontSize: contentFontSize,
                        fontWeight: FontWeight.w100,
                        height: 1.8,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            ColoredBox(
              color: const Color(0xFF000000),
              child: SizedBox(
                width: isWideLayout ? 620: isNarrowLayout ? 540 : 460,
                height: 1,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: Text.rich(
                TextSpan(
                  text: "Số lượng buổi học: ",
                  style: TextStyle(
                    color: const Color(0xFF0353CC),
                    fontSize: contentFontSize,
                    fontWeight: FontWeight.w100,
                    height: 1.2,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: "3 buổi",
                      style: TextStyle(
                        color: const Color(0xFF121825),
                        fontSize: contentFontSize,
                        fontWeight: FontWeight.w100,
                      ),
                    ),
                    TextSpan(
                      text: "    |    Thời lượng học: ",
                      style: TextStyle(
                        color: const Color(0xFF0353CC),
                        fontSize: contentFontSize,
                        fontWeight: FontWeight.w100,
                      ),
                    ),
                    TextSpan(
                      text: "120 phút-150 phút/buổi",
                      style: TextStyle(
                        color: const Color(0xFF121825),
                        fontSize: contentFontSize,
                        fontWeight: FontWeight.w100,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            if (isSmallLayout)
                Container(
                width: 480,
                height: 480,
                decoration: BoxDecoration(
                  color: const Color(0xFFE0EDFF),
                  borderRadius: BorderRadius.circular(22),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Giảng viên phụ trách",
                      style: TextStyle(
                        color: Color(0xFF000000),
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 40,),
                    Container(
                      width: 235,
                      height: 235,
                      decoration: BoxDecoration(
                        color: const Color(0xFFE0EDFF),
                        borderRadius: BorderRadius.circular(120),
                        image: const DecorationImage(
                          image: AssetImage("assets/images/Chị Hoàng Thảo Anh - CMO Adsota Agency 1.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(height: 48,),
                    Text(
                      name,
                      style: const TextStyle(
                        color: Color(0xFF121825),
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 9,),
                    Text(
                      role,
                      style: const TextStyle(
                        color: Color(0xFF121825),
                        fontSize: 16,
                        fontWeight: FontWeight.w100,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          if (isWideLayout || isNarrowLayout)
          Container(
          width: isWideLayout ? 480 : 360,
          height: isWideLayout ? 480 : 360,
          decoration: BoxDecoration(
            color: const Color(0xFFE0EDFF),
            borderRadius: BorderRadius.circular(24),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Giảng viên phụ trách",
                style: TextStyle(
                  color: const Color(0xFF000000),
                  fontSize: isWideLayout ? 24 : 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: isWideLayout ? 40 : 32,),
              Container(
                width: isWideLayout ? 235 : 200,
                height: isWideLayout ? 235 : 200,
                decoration: BoxDecoration(
                  color: const Color(0xFFE0EDFF),
                  borderRadius: BorderRadius.circular(120),
                  image: const DecorationImage(
                    image: AssetImage("assets/images/Chị Hoàng Thảo Anh - CMO Adsota Agency 1.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: isWideLayout ? 48 : 40,),
              Text(
                name,
                style: TextStyle(
                  color: const Color(0xFF121825),
                  fontSize: isWideLayout ? 24 : 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: isWideLayout ? 9 : 8,),
              Text(
                role,
                style: TextStyle(
                  color: const Color(0xFF121825),
                  fontSize: isWideLayout ? 16 : 14,
                  fontWeight: FontWeight.w100,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

