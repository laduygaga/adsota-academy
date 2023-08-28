import 'package:flutter/material.dart';
import '../atoms/button.dart';

class OTATitle extends StatelessWidget {
  final GlobalKey registerFormKey;
  const OTATitle({
    Key? key,
    required this.registerFormKey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double maxWidth = MediaQuery.of(context).size.width;
    bool isWideLayout = maxWidth >= 1440;
    bool isNarrowLayout = maxWidth > 800 && maxWidth < 1440;
    bool isSmallLayout = maxWidth <= 800;
    double titleFontSize = isWideLayout ? 75 : (isNarrowLayout ? 55 : 55);
    double contentFontSize = isWideLayout ? 24 : (isNarrowLayout ? 18 : 24);
    return Container(
      padding: EdgeInsets.only(
        top: isWideLayout ? 100 : (isNarrowLayout ? 50 : 30),
        bottom: isWideLayout ? 100 : (isNarrowLayout ? 50 : 30),
      ),
      width: maxWidth,
      color: const Color(0xFF0353CC),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Padding(
              padding: EdgeInsets.only(
                left: isWideLayout? 0 : (isNarrowLayout ? 0 : 16),
                right: isWideLayout? 0 : (isNarrowLayout ? 0 : 16),
              ),
              child: Text.rich(
                TextSpan(
                  text: "LEARN\n",
                  style: TextStyle(
                    color: const Color(0xFFFFFFFF),
                    fontSize: titleFontSize,
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
              padding: EdgeInsets.only(
                top: isWideLayout? 30 : (isNarrowLayout ? 20 : 16),
                bottom: isWideLayout? 30 : (isNarrowLayout ? 20 : 16),
                left: isWideLayout? 0 : (isNarrowLayout ? 0 : 16),
                right: isWideLayout? 0 : (isNarrowLayout ? 0 : 16),
              ),
              child:
                SizedBox(
                  width: isWideLayout ? 592 : (isNarrowLayout ? 592 * 0.6 : maxWidth * 0.8),
                  child: Text(
                  "Trong thế giới liên tục đối thay, học tập - đổi mới tư duy là cách bền vững nhất để con người và doanh nghiệp phát triển.",
                  style: TextStyle(
                    color: const Color(0xFFFFFFFF),
                    fontSize: contentFontSize,
                    fontWeight: FontWeight.normal,
                    height: 1.5,
                  ),
                ),
              ),
            ),
            if (isSmallLayout)
              Padding(
                padding: const EdgeInsets.all(
                  16,
                ),
                child: Image.asset(
                  width: maxWidth * 0.8,
                  "assets/images/asian-girl.png",
                  fit: BoxFit.contain,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: isWideLayout? 76 : (isNarrowLayout ? 30 : 16),
                  bottom: isWideLayout? 76 : (isNarrowLayout ? 30 : 16),
                  left: isWideLayout? 0 : (isNarrowLayout ? 0 : 16),
                  right: isWideLayout? 0 : (isNarrowLayout ? 0 : 16),
                ),
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
                  onPressed: () => {
                    _scrollToPosition(registerFormKey.currentContext!)
                    }
                ),
              ),
            ],
          ),
          if (isNarrowLayout || isWideLayout || isSmallLayout) const SizedBox(width: 16), // Add spacing for narrow, wide, and small layouts
          if (isWideLayout || isNarrowLayout)
          Image.asset(
            width: isWideLayout ? 527 : (isNarrowLayout ? 527 * 0.6 : 527 * 0.7),
            height: isWideLayout ? 511.28 : (isNarrowLayout ? 511.28 * 0.6 : 511.28 * 0.7),
            "assets/images/asian-girl.png",
            fit: BoxFit.contain,
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

