import 'package:flutter/material.dart';
import 'atoms/button.dart';

class MainContent extends StatelessWidget {

  const MainContent({super.key});

  static const TextStyle menuTextStyle = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: Color(0xff696969),
  );

  static const TextStyle mainTextStyle = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold,
    color: Color(0xff252525),
  );

  final String contentBackground = 'assets/images/content_bg.png';

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate(
        _buildContainer(context),
      ),
    );
  }

  List<Widget> _buildContainer(BuildContext context) {
    List<Widget> children = [];
    children.add(_buildTitle());
    return children;
  }

  Widget _buildTitle() {
    return Container(
      width: 1440,
      height: 656,
      color: Color(0xFF0353CC),
      child: Row(
        children: [
          Container(
            width: 663,
            height: 600,
            child: Column(
              children: [
                Container(
                  width: 663,
                  height: 225,
                  margin: const EdgeInsets.only(left: 132, top: 0),
                  child: Column(
                    children: [
                      Container(
                        width: 663,
                        height: 75,
                        child: const Text(
                          "LEARN",
                          style: TextStyle(
                            color: Color(0xFFFFFFFF),
                            fontSize: 70,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        width: 663,
                        height: 75,
                        child: const Text(
                          "UNLEARN",
                          style: TextStyle(
                            color: Color(0xFFFACB28),
                            fontSize: 70,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        width: 663,
                        height: 75,
                        child: const Text(
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
                  margin: const EdgeInsets.only(left: 132, top: 50),
                  child: const Text(
                    "Trong thế giới liên tục đối thay, học tập - đổi mới tư duy là cách bền vững nhất để con người và doanh nghiệp phát triển.",
                    style: TextStyle(
                      color: Color(0xFFFFFFFF),
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Container(
                width: 314,
                height: 71,
                margin: const EdgeInsets.only(left: 132, top: 50),
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
                  ),
                ),
              ],
            ),
          ),
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
      ),
    );
  }
}
