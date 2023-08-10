import 'package:flutter/material.dart';
import '../atoms/teacher_card.dart';

class Teacher extends StatelessWidget {
  const Teacher({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final double screenWidth = constraints.maxWidth;

        if (screenWidth > 1200) {
          // Use row layout for wide screens
          return const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TeacherCard(
                scale: 1,
                name: "Chị Hoàng Thảo Anh",
                image: "assets/images/thao-anh.png",
                role: "CMO Adsota",
              ),
              SizedBox(width: 30),
              TeacherCard(
                scale: 1,
                name: "Anh Đặng Phú Vinh",
                image: "assets/images/phu-vinh.png",
                role: "CEO Adsota",
              ),
              SizedBox(width: 30),
              TeacherCard(
                scale: 1,
                name: "Anh Lương Thế Long",
                image: "assets/images/the-long.png",
                role: "Digital Marketing Manager Adsota",
              ),
            ],
          );
        } else if (screenWidth > 600 && screenWidth <= 1200) {
          // Use row layout for wide screens
          double scale = screenWidth / 1200;
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TeacherCard(
                scale: scale,
                name: "Chị Hoàng Thảo Anh",
                image: "assets/images/thao-anh.png",
                role: "CMO Adsota",
              ),
              SizedBox(width: 30 * scale),
              TeacherCard(
                scale: scale,
                name: "Anh Đặng Phú Vinh",
                image: "assets/images/phu-vinh.png",
                role: "CEO Adsota",
              ),
              SizedBox(width: 30 * scale),
              TeacherCard(
                scale: scale,
                name: "Anh Lương Thế Long",
                image: "assets/images/the-long.png",
                role: "Digital Marketing Manager Adsota",
              ),
            ],
          );
        } else {
          // Use column layout for narrower screens
          return const Column(
            children: [
              TeacherCard(
                scale: 1,
                name: "Chị Hoàng Thảo Anh",
                image: "assets/images/thao-anh.png",
                role: "CMO Adsota",
              ),
              SizedBox(height: 20),
              TeacherCard(
                scale: 1,
                name: "Anh Đặng Phú Vinh",
                image: "assets/images/phu-vinh.png",
                role: "CEO Adsota",
              ),
              SizedBox(height: 20),
              TeacherCard(
                scale: 1,
                name: "Anh Lương Thế Long",
                image: "assets/images/the-long.png",
                role: "Digital Marketing Manager Adsota",
              ),
            ],
          );
        }
      },
    );
  }
}

