import 'package:flutter/material.dart';
import '../atoms/course_card.dart';

class Course extends StatelessWidget{
  const Course({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final double screenWidth = constraints.maxWidth;

        if (screenWidth > 1200) {
          return const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CourseCard(
                scale: 1,
                title: "Branding Marketing",
                image: "assets/images/brand-marketing.png",
                content: "Khóa học cung cấp tư duy cơ bản về việc xây dựng và quản trị thương hiệu cho doanh nghiệp, sản phẩm.",
              ),
              SizedBox(width: 220),
              CourseCard(
                scale: 1,
                title: "Digital Marketing",
                image: "assets/images/digital-marketing.png",
                content: "Khóa học cung cấp kiến thức cơ bản về bản chất của các kênh digital và phương pháp triển khai chiến lược quảng cáo trên các kênh này.",
              ),
            ],
          );
        } else if (screenWidth > 600 && screenWidth <= 1200) {
          double scale = screenWidth / 1440;
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CourseCard(
                scale: scale,
                title: "Branding Marketing",
                image: "assets/images/brand-marketing.png",
                content: "Khóa học cung cấp tư duy cơ bản về việc xây dựng và quản trị thương hiệu cho doanh nghiệp, sản phẩm.",
              ),
              SizedBox(width: 220 * scale),
              CourseCard(
                scale: scale,
                title: "Digital Marketing",
                image: "assets/images/digital-marketing.png",
                content: "Khóa học cung cấp kiến thức cơ bản về bản chất của các kênh digital và phương pháp triển khai chiến lược quảng cáo trên các kênh này.",
              ),
            ],
          );
        } else {
          return const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CourseCard(
                scale: 1,
                title: "Branding Marketing",
                image: "assets/images/brand-marketing.png",
                content: "Khóa học cung cấp tư duy cơ bản về việc xây dựng và quản trị thương hiệu cho doanh nghiệp, sản phẩm.",
              ),
              SizedBox(height: 48),
              CourseCard(
                scale: 1,
                title: "Digital Marketing",
                image: "assets/images/digital-marketing.png",
                content: "Khóa học cung cấp kiến thức cơ bản về bản chất của các kênh digital và phương pháp triển khai chiến lược quảng cáo trên các kênh này.",
              ),
            ],
          );
        }
      },
    );
  }
}
