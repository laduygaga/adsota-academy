import 'package:flutter/material.dart';
import '../atoms/card.dart';

class AfterCourse extends StatelessWidget{
  const AfterCourse({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double maxWidth = MediaQuery.of(context).size.width;
    if (maxWidth >= 1440) {
      return const Padding(
        padding: EdgeInsets.only(
          top: 162,
          bottom: 162,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                OTACard(
                  scale: 1,
                  title: "Tư duy nền tảng",
                  image: "assets/images/idea.png",
                  content: "Thấu hiểu bức tranh tổng quan về Marketing, trau dồi tư duy Marketing bằng phương pháp tiếp cận logic và thực tế.",
                ),
              ],
            ),
            SizedBox(width: 45),
            Column(
              children: [
              SizedBox(height: 116),
              SizedBox(width: 530, height: 108,
                child: Text(
                "Học viên nhận được gì sau khóa học?",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF121825),
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                  height: 1,
                  ),
                ),
              ),
              SizedBox(height: 115),
              OTACard(
                scale: 1,
                title: "Phát triển sự nghiệp",
                image: "assets/images/develop.png",
                content: "Học viên được phát triển kỹ năng, kiến thức, có thể đóng góp và tạo ra đột phá cho doanh nghiệp.",
                ),
              ],
            ),
            SizedBox(width: 45),
            Column(
              children: [
                OTACard(
                  scale: 1,
                  title: "Áp dụng thực hiện vào doanh nghiệp",
                  image: "assets/images/apply.png",
                  content: "Kiến thức, kỹ năng được học có thể áp dụng ngay vào các chiến lược, nhiệm vụ đang triển khai tại doanh nghiệp.",
                ),
              ],
            ),
          ],
        ),
      );
    } else if (maxWidth > 800 && maxWidth < 1440) {
      double scale = maxWidth / 1440;
      return Padding(
        padding: EdgeInsets.only(
          top: 162 * scale,
          bottom: 162 * scale,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                OTACard(
                  scale: scale,
                  title: "Tư duy nền tảng",
                  image: "assets/images/idea.png",
                  content: "Thấu hiểu bức tranh tổng quan về Marketing, trau dồi tư duy Marketing bằng phương pháp tiếp cận logic và thực tế.",
                ),
              ],
            ),
            SizedBox(width: 45 * scale),
            Column(
              children: [
              SizedBox(height: 116 * scale),
              SizedBox(width: 530 * scale, height: 108 * scale,
                child: Text(
                "Học viên nhận được gì sau khóa học?",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: const Color(0xFF121825),
                  fontSize: 48 * scale,
                  fontWeight: FontWeight.bold,
                  height: 1,
                  ),
                ),
              ),
              SizedBox(height: 115 * scale),
              OTACard(
                scale: scale,
                title: "Phát triển sự nghiệp",
                image: "assets/images/develop.png",
                content: "Học viên được phát triển kỹ năng, kiến thức, có thể đóng góp và tạo ra đột phá cho doanh nghiệp.",
                ),
              ],
            ),
            SizedBox(width: 45 * scale),
            Column(
              children: [
                OTACard(
                  scale: scale,
                  title: "Áp dụng thực hiện vào doanh nghiệp",
                  image: "assets/images/apply.png",
                  content: "Kiến thức, kỹ năng được học có thể áp dụng ngay vào các chiến lược, nhiệm vụ đang triển khai tại doanh nghiệp.",
                ),
              ],
            ),
          ],
        ),
      );
    } else {
      return Container(
        width: maxWidth,
        color: const Color(0xFFFFFFFF),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 50),
                SizedBox(width: 530, height: 100,
                  child: Text(
                  "Học viên nhận được gì sau khóa học?",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF121825),
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    height: 1.2,
                      ),
                    ),
                  ),
                SizedBox(height: 50),
                OTACard(
                  scale: 1.2,
                  title: "Tư duy nền tảng",
                  image: "assets/images/idea.png",
                  content: "Thấu hiểu bức tranh tổng quan về Marketing, trau dồi tư duy Marketing bằng phương pháp tiếp cận logic và thực tế.",
                ),
                SizedBox(height: 50),
                OTACard(
                  scale: 1.2,
                  title: "Phát triển sự nghiệp",
                  image: "assets/images/develop.png",
                  content: "Học viên được phát triển kỹ năng, kiến thức, có thể đóng góp và tạo ra đột phá cho doanh nghiệp.",
                  ),
                SizedBox(height: 50),
                OTACard(
                  scale: 1.2,
                  title: "Áp dụng thực hiện vào doanh nghiệp",
                  image: "assets/images/apply.png",
                  content: "Kiến thức, kỹ năng được học có thể áp dụng ngay vào các chiến lược, nhiệm vụ đang triển khai tại doanh nghiệp.",
                ),
              ],
            ),
          ],
        ),
      );
    }
  }
}
