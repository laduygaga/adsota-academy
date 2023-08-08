import 'package:flutter/material.dart';
import '../atoms/course_card.dart';

class Course extends StatelessWidget{
  const Course({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CourseCard(
          title: "Branding Marketing",
          image: "assets/images/brand-marketing.png",
          content: "Khóa học cung cấp tư duy cơ bản về việc xây dựng và quản trị thương hiệu cho doanh nghiệp, sản phẩm.",
        ),
        SizedBox(width: 220),
        CourseCard(
          title: "Digital Marketing",
          image: "assets/images/digital-marketing.png",
          content: "Khóa học cung cấp kiến thức cơ bản về bản chất của các kênh digital và phương pháp triển khai chiến lược quảng cáo trên các kênh này.",
        ),
      ],
    );
  }
}
