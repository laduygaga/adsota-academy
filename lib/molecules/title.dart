import 'package:flutter/material.dart';
import '../atoms/button.dart';

class OTATitle extends StatelessWidget {
  const OTATitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        bool isWideLayout = constraints.maxWidth >= 1440;
        bool isNarrowLayout = constraints.maxWidth > 600 && constraints.maxWidth < 1440;
        bool isSmallLayout = constraints.maxWidth <= 600;
        double titleFontSize = isWideLayout ? 75 : (isNarrowLayout ? 55 : 45);
        double contentFontSize = isWideLayout ? 24 : (isNarrowLayout ? 18 : 14);

        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Padding(
                padding: const EdgeInsets.only(),
                child: Text.rich(
                  TextSpan(
                    text: "LEARN\n",
                    style: TextStyle(
                      color: const Color(0xFFFFFFFF),
                      fontSize: isWideLayout ? 70 : (isNarrowLayout ? 50 : 40),
                      fontWeight: FontWeight.bold,
                      height: 1,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: "UNLEARN\n",
                        style: TextStyle(
                          color: const Color(0xFFFACB28),
                          fontSize: titleFontSize,
                          fontWeight: FontWeight.bold,
                          height: 1,
                        ),
                      ),
                      TextSpan(
                        text: "RELEARN",
                        style: TextStyle(
                          color: const Color(0xFFFFFFFF),
                          fontSize: titleFontSize,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Text(
                  "Trong thế giới liên tục đối thay, học tập - đổi mới\n tư duy là cách bền vững nhất để con người và\n doanh nghiệp phát triển.",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: const Color(0xFFFFFFFF),
                    fontSize: contentFontSize,
                    fontWeight: FontWeight.w100,
                    height: 1.3,
                  ),
                ),
              ),
              if (isSmallLayout)
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Image.asset(
                    width: constraints.maxWidth * 0.8,
                    "assets/images/asian-girl.png",
                    fit: BoxFit.contain,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: isWideLayout ? 76 : (isNarrowLayout ? 30: 20)),
                  child: Button(
                    width: isWideLayout ? 314 : (isNarrowLayout ? 200 : 160),
                    height: isWideLayout ? 71 : (isNarrowLayout ? 51 : 41),
                    label: "Đăng ký ngay",
                    bgColor: "0xFFFACB28",
                    labelColor: "0xFF0353CC",
                    labelSize: isWideLayout ? 24 : (isNarrowLayout ? 18 : 16),
                    radius: 51,
                    iconPath: "assets/images/arrow.svg",
                    iconHeight: isWideLayout ? 30 : (isNarrowLayout ? 20 : 18),
                    iconWidth: isWideLayout ? 16 : (isNarrowLayout ? 12 : 10),
                    spaces: isWideLayout ? 30 : (isNarrowLayout ? 20 : 16),
                    onPressed: null,
                  ),
                ),
              ],
            ),
            if (isNarrowLayout || isWideLayout || isSmallLayout) const SizedBox(width: 16), // Add spacing for narrow, wide, and small layouts
            if (isWideLayout || isNarrowLayout)
            Image.asset(
              width: isWideLayout ? 527 : (isNarrowLayout ? 527 * 0.6 : 527 * 0.8),
              height: isWideLayout ? 511.28 : (isNarrowLayout ? 511.28 * 0.6 : 511.28 * 0.8),
              "assets/images/asian-girl.png",
              fit: BoxFit.contain,
            ),
          ],
        );
      },
    );
  }
}

