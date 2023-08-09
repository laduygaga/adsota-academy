import 'package:flutter/material.dart';
import '../atoms/card.dart';

class AfterCourse extends StatelessWidget{
  const AfterCourse({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          children: [
            SizedBox(height: 154),
            OTACard(
              title: "Tư duy nền tảng",
              image: "assets/images/idea.png",
              content: "Thấu hiểu bức tranh tổng quan về Marketing, trau dồi tư duy Marketing bằng phương pháp tiếp cận logic và thực tế.",
            ),
          ],
        ),
        SizedBox(width: 45),
        Column(
          children: [
          SizedBox(height: 279),
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
            title: "Phát triển sự nghiệp",
            image: "assets/images/develop.png",
            content: "Học viên được phát triển kỹ năng, kiến thức, có thể đóng góp và tạo ra đột phá cho doanh nghiệp.",
            ),
          SizedBox(height: 162),
          ],
        ),
        SizedBox(width: 45),
        Column(
          children: [
            SizedBox(height: 154),
            OTACard(
              title: "Áp dụng thực hiện vào doanh nghiệp",
              image: "assets/images/apply.png",
              content: "Kiến thức, kỹ năng được học có thể áp dụng ngay vào các chiến lược, nhiệm vụ đang triển khai tại doanh nghiệp.",
            ),
          ],
        ),
      ],
    );
  }
}
