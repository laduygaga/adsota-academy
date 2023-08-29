import 'package:flutter/material.dart';
import '../atoms/course_card.dart';
import '../pages/desktop2.dart';
import '../pages/desktop3.dart';

class Course extends StatelessWidget{
  final VoidCallback? onViewDetailsPressed; // Add this callback
  final GlobalKey registerFormKey2;
  final GlobalKey registerFormKey3;
  final double maxWidth;
  const Course({
    Key? key,
    required this.maxWidth,
    required this.registerFormKey2,
    required this.registerFormKey3,
    this.onViewDetailsPressed, // Add this callback
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (maxWidth >= 1400) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CourseCard(
            scale: 1,
            title: "Branding Marketing",
            image: "assets/images/brand-marketing.png",
            content: "Khóa học cung cấp tư duy cơ bản về việc xây dựng và quản trị thương hiệu cho doanh nghiệp, sản phẩm.",
            onViewDetailsPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Desktop2Page(registerFormKey: registerFormKey2,)),
              );
            },
          ),
          const SizedBox(width: 220),
          CourseCard(
            scale: 1,
            title: "Digital Marketing",
            image: "assets/images/digital-marketing.png",
            content: "Khóa học cung cấp kiến thức cơ bản về bản chất của các kênh digital và phương pháp triển khai chiến lược quảng cáo trên các kênh này.",
            onViewDetailsPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Desktop3Page(registerFormKey: registerFormKey3,)),
              );
            },
          ),
        ],
      );
    } else if (maxWidth > 600 && maxWidth < 1440) {
      double scale = maxWidth / 1200;
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CourseCard(
            scale: scale,
            title: "Branding Marketing",
            image: "assets/images/brand-marketing.png",
            content: "Khóa học cung cấp tư duy cơ bản về việc xây dựng và quản trị thương hiệu cho doanh nghiệp, sản phẩm.",
            onViewDetailsPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Desktop2Page(registerFormKey: registerFormKey2,)),
              );
            },
          ),
          SizedBox(width: 220 * scale),
          CourseCard(
            scale: scale,
            title: "Digital Marketing",
            image: "assets/images/digital-marketing.png",
            content: "Khóa học cung cấp kiến thức cơ bản về bản chất của các kênh digital và phương pháp triển khai chiến lược quảng cáo trên các kênh này.",
            onViewDetailsPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Desktop3Page(registerFormKey: registerFormKey3,)),
              );
            },
          ),
        ],
      );
    } else {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CourseCard(
            scale: 0.9,
            title: "Branding Marketing",
            image: "assets/images/brand-marketing.png",
            content: "Khóa học cung cấp tư duy cơ bản về việc xây dựng và quản trị thương hiệu cho doanh nghiệp, sản phẩm.",
            onViewDetailsPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Desktop2Page(registerFormKey: registerFormKey2,)),
              );
            },
          ),
          const SizedBox(height: 48),
          CourseCard(
            scale: 0.9,
            title: "Digital Marketing",
            image: "assets/images/digital-marketing.png",
            content: "Khóa học cung cấp kiến thức cơ bản về bản chất của các kênh digital và phương pháp triển khai chiến lược quảng cáo trên các kênh này.",
            onViewDetailsPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Desktop3Page(registerFormKey: registerFormKey3,)),
              );
            },
          ),
        ],
      );
    }
  }
}
