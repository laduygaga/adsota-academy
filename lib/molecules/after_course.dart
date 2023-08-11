import 'package:flutter/material.dart';
import '../atoms/card.dart';

class AfterCourse extends StatelessWidget{
  const AfterCourse({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final double screenWidth = constraints.maxWidth;

        if (screenWidth > 1200) {
          return const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  SizedBox(height: 200),
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
                SizedBox(height: 290),
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
                SizedBox(height: 80),
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
                  SizedBox(height: 200),
                  OTACard(
                    scale: 1,
                    title: "Áp dụng thực hiện vào doanh nghiệp",
                    image: "assets/images/apply.png",
                    content: "Kiến thức, kỹ năng được học có thể áp dụng ngay vào các chiến lược, nhiệm vụ đang triển khai tại doanh nghiệp.",
                  ),
                ],
              ),
            ],
          );
        } else if (screenWidth > 600 && screenWidth <= 1200) {
          double scale = screenWidth / 1200;
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  SizedBox(height: 154 * scale),
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
                SizedBox(height: 279* scale),
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
                SizedBox(height:  80 * scale),
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
                  SizedBox(height: 154 * scale),
                  OTACard(
                    scale: scale,
                    title: "Áp dụng thực hiện vào doanh nghiệp",
                    image: "assets/images/apply.png",
                    content: "Kiến thức, kỹ năng được học có thể áp dụng ngay vào các chiến lược, nhiệm vụ đang triển khai tại doanh nghiệp.",
                  ),
                ],
              ),
            ],
          );
        } else {
          return const Column(
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
          );
        }
      },
    );
  }
}
