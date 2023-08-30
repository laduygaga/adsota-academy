import 'package:flutter/material.dart';

class CourseSummary extends StatelessWidget {
  final double scale;
  final String title1;
  final String title2;
  final String summaryContent;
  final String avatar1;
  final String? avatar2;
  final String name1;
  final String? name2;
  final String role1;
  final String? role2;
  const CourseSummary({
    Key? key,
    required this.scale,
    required this.title1,
    required this.title2,
    required this.avatar1,
    this.avatar2,
    required this.name1,
    this.name2,
    required this.role1,
    this.role2,
    required this.summaryContent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double titleFontSize = 40 * scale;
    double contentFontSize = 16;
    if (scale > 890 / 1200) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(right: 16 * scale),
                child: SizedBox(
                  width: 580 * scale,
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
                          text: summaryContent,
                          style: TextStyle(
                            color: const Color(0xFF121825),
                            fontSize: contentFontSize,
                            fontWeight: FontWeight.normal,
                            height: 1.8,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              ColoredBox(
                color: const Color(0xFF000000),
                child: SizedBox(
                  width: 580 * scale,
                  height: 1,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                child: Text.rich(
                  textAlign: TextAlign.center,
                  TextSpan(
                    text: "Số lượng buổi học: ",
                    style: TextStyle(
                      color: const Color(0xFF0353CC),
                      fontSize: contentFontSize,
                      fontWeight: FontWeight.normal,
                      height: 1.2,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: "3 buổi",
                        style: TextStyle(
                          color: const Color(0xFF121825),
                          fontSize: contentFontSize,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      TextSpan(
                        text: "    |    Thời lượng học: ",
                        style: TextStyle(
                          color: const Color(0xFF0353CC),
                          fontSize: contentFontSize,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      TextSpan(
                        text: "120 phút-150 phút/buổi",
                        style: TextStyle(
                          color: const Color(0xFF121825),
                          fontSize: contentFontSize,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Container(
            width: 480 * scale,
            height: 480 * scale,
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
                    fontSize: 24 * scale,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 40 * scale),
                if (title2 == "BRANDING - MARKETING\n")
                Column(
                children: [
                Container(
                  width: 235 * scale,
                  height: 235 * scale,
                  decoration: BoxDecoration(
                    color: const Color(0xFFE0EDFF),
                    borderRadius: BorderRadius.circular(120),
                    border:  Border.all(
                      color: const Color(0xFFFFFFFF),
                      width: 5,
                    ),
                    image: DecorationImage(
                      image: AssetImage(avatar1),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(height: 48 * scale),
                Text(
                  name1,
                  style: TextStyle(
                    color: const Color(0xFF0353CC),
                    fontSize: 20 * scale,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 9 * scale),
                Text(
                  role1,
                  style: TextStyle(
                    color: const Color(0xFF121825),
                    fontSize: 16 * scale,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                ],
                ),
                if (title2 == "DIGITAL MARKETING\n")
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Container(
                          width: 202.62 * scale,
                          height: 202.62 * scale,
                          decoration: BoxDecoration(
                            color: const Color(0xFFE0EDFF),
                            borderRadius: BorderRadius.circular(120),
                            border:  Border.all(
                              color: const Color(0xFFFFFFFF),
                              width: 5,
                            ),
                            image: DecorationImage(
                              image: AssetImage(avatar1),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(height: 14 * scale),
                        Text(
                        name1,
                        style: TextStyle(
                          color: const Color(0xFF0353CC),
                          fontSize: 20 * scale,
                          fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 9 * scale),
                        Text(
                        role1,
                        style: TextStyle(
                          color: const Color(0xFF121825),
                          fontSize: 13 * scale,
                          fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          width: 202.62 * scale,
                          height: 202.62 * scale,
                          decoration: BoxDecoration(
                            color: const Color(0xFFE0EDFF),
                            borderRadius: BorderRadius.circular(120),
                            border:  Border.all(
                              color: const Color(0xFFFFFFFF),
                              width: 5,
                            ),
                            image: DecorationImage(
                              image: AssetImage(avatar2!),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(height: 14 * scale),
                        Text(
                        name2!,
                        style: TextStyle(
                          color: const Color(0xFF0353CC),
                          fontSize: 20 * scale,
                          fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 9 * scale),
                        Text(
                        role2!,
                        style: TextStyle(
                          color: const Color(0xFF121825),
                          fontSize: 13 * scale,
                          fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      );
    } else {
      return Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text.rich(
              TextSpan(
                text: title1,
                style: const TextStyle(
                  color: Color(0xFFFACB28),
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  height: 1.2,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: title2,
                    style: const TextStyle(
                      color: Color(0xFF0253CC),
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      height: 1.8,
                    ),
                  ),
                  TextSpan(
                    text: summaryContent,
                    style: const TextStyle(
                      color: Color(0xFF121825),
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      height: 1.8,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            ColoredBox(
              color: const Color(0xFF000000),
              child: SizedBox(
                width: scale * 1200 - 32,
                height: 1,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const Text.rich(
              textAlign: TextAlign.center,
              TextSpan(
                text: "Số lượng buổi học: ",
                style: TextStyle(
                  color: Color(0xFF0353CC),
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  height: 1.2,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: "3 buổi",
                    style: TextStyle(
                      color: Color(0xFF121825),
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  TextSpan(
                    text: "    |    Thời lượng học: ",
                    style: TextStyle(
                      color: Color(0xFF0353CC),
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  TextSpan(
                    text: "120 phút-150 phút/buổi",
                    style: TextStyle(
                      color: Color(0xFF121825),
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40),
            if (title2 == "BRANDING - MARKETING\n")
            Column(
              children: [
                Container(
                  width: 480,
                  height: 480,
                  decoration: BoxDecoration(
                    color: const Color(0xFFE0EDFF),
                    borderRadius: BorderRadius.circular(24),
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
                      const SizedBox(height: 40),
                      Container(
                        width: 235,
                        height: 235,
                        decoration: BoxDecoration(
                          color: const Color(0xFFE0EDFF),
                          borderRadius: BorderRadius.circular(120),
                          image: DecorationImage(
                            image: AssetImage(avatar1),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(height: 48),
                      Text(
                        name1,
                        style: const TextStyle(
                          color: Color(0xFF0353CC),
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 9),
                      Text(
                        role1,
                        style: const TextStyle(
                          color: Color(0xFF121825),
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            if (title2 == "DIGITAL MARKETING\n")
            Container(
              width: 480,
              height: 480,
              decoration: BoxDecoration(
                color: const Color(0xFFE0EDFF),
                borderRadius: BorderRadius.circular(24),
              ),
            child: 
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 202.6 * 0.7,
                        height: 202.6 * 0.7,
                        decoration: BoxDecoration(
                          color: const Color(0xFFE0EDFF),
                          borderRadius: BorderRadius.circular(120),
                          border:  Border.all(
                            color: const Color(0xFFFFFFFF),
                            width: 5,
                          ),
                          image: DecorationImage(
                            image: AssetImage(avatar1),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(height: 14 * scale),
                      SizedBox(
                        width: 202.6 * 0.7,
                        child: Text(
                        name1,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Color(0xFF0353CC),
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 9 * scale),
                      SizedBox(
                        width: 202.6 * 0.7,
                        child: Text(
                        '$role1\n',
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Color(0xFF121825),
                          fontSize: 13,
                          fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 30 * scale),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 202.6 * 0.7,
                        height: 202.6 * 0.7,
                        decoration: BoxDecoration(
                          color: const Color(0xFFE0EDFF),
                          borderRadius: BorderRadius.circular(120),
                          border:  Border.all(
                            color: const Color(0xFFFFFFFF),
                            width: 5,
                          ),
                          image: DecorationImage(
                            image: AssetImage(avatar2!),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(height: 14 * scale),
                      SizedBox(
                      width: 202.6 * 0.7,
                      child: Text(
                      name2!,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Color(0xFF0353CC),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        ),
                      ),
                      ),
                      SizedBox(height: 9 * scale),
                      SizedBox(
                      width: 202.6 * 0.7,
                      child:Text(
                      role2!,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Color(0xFF121825),
                        fontSize: 13,
                        fontWeight: FontWeight.normal,
                        ),
                      ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }
  }
}
