import 'package:flutter/material.dart';
import '../atoms/teacher_card.dart';

class Teacher extends StatelessWidget{
  const Teacher({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TeacherCard(
          name: "Chị Hoàng Thảo Anh",
          image: "assets/images/thao-anh.png",
          role: "CMO Adsota",
        ),
        SizedBox(width: 61),
        TeacherCard(
          name: "Anh Đặng Phú Vinh",
          image: "assets/images/phu-vinh.png",
          role: "CEO Adsota",
        ),
        SizedBox(width: 61),
        TeacherCard(
          name: "Anh Lương Thế Long",
          image: "assets/images/the-long.png",
          role: "Digital Marketing Manager Adsota",
        ),
      ],
    );
  }
}
