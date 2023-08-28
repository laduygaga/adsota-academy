import 'package:flutter/material.dart';
import '../atoms/teacher_card.dart';

class Teacher extends StatelessWidget {
  final double maxWidth;
  const Teacher({
    Key? key,
    required this.maxWidth,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (maxWidth >= 1440) {
      // Use row layout for wide screens
      return const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TeacherCard(
            scale: 1,
            name: "Chị Hoàng Thảo Anh",
            image: "assets/images/thao-anh.png",
            role: "CMO Adsota",
            text: "\u2022 Thạc sĩ Quan hệ Công chúng - Học viện Báo chí và Tuyên truyền\n\u2022 CMO Adsota Agency\n\u2022 Giảng viên Đại học Đại Nam, Học viện Báo chí và Tuyên truyền\n\u2022 Thành viên chính thức của CSMO Vietnam (CLB giám đốc Sales và Marketing Việt Nam)\n\u2022 Từng là cán bộ ban truyền thông tập đoàn FPT\n\u2022 Trưởng nhóm quản trị thương hiệu Appota Group\n\u2022 Tư vấn xây dựng và phát triển thương hiệu cho các doanh nghiệp",
          ),
          SizedBox(width: 61),
          TeacherCard(
            scale: 1,
            name: "Anh Đặng Phú Vinh",
            image: "assets/images/phu-vinh.png",
            role: "CEO Adsota",
            text: "\u2022 CEO của Adsota Agency\n\u2022 CCO (Giám đốc kinh doanh) của OTA Network.\n\u2022 Anh có 8 năm hoạt động trong lĩnh vực Marketing và 3 năm trong Chuyển đổi số\n\u2022 Là một chuyên gia trong việc triển khai giải pháp marketing tổng thể cho doanh nghiệp, trong đó có các doanh nghiệp thuộc VNR500.\n\u2022 Từng hợp tác và xây dựng mối quan hệ mật thiết với các khách hàng tiêu biểu trong ngành ngân hàng, viễn thông, giáo dục như: Techcombank, Traveloka, Phenikaa, Detech, Viettel,..\n\u2022 Là giảng viên thỉnh giảng uy tín tại Đại học Kinh tế Quốc dân và Học viện Báo chí Tuyên truyền.",
          ),
          SizedBox(width: 61),
          TeacherCard(
            scale: 1,
            name: "Anh Lương Thế Long",
            image: "assets/images/the-long.png",
            role: "Digital Marketing Manager Adsota",
            text: "\u2022 Digital Marketing Manager tại Adsota Agency\n\u2022 CCO (Giám đốc kinh doanh) của OTA Network.\n\u2022 Có kinh nghiệm 5 năm xây dựng và thực thi các kế hoạch, chiến lược Marketing cho nhiều thương hiệu lớn như Techcombank, Detech,  Phenikaa...\n\u2022 Là giám khảo các cuộc thi Marketing Việt Nam",
          ),
        ],
      );
    } else if (maxWidth > 600 && maxWidth < 1440) {
      // Use row layout for wide screens
      double scale = maxWidth / 1440;
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TeacherCard(
            scale: scale,
            name: "Chị Hoàng Thảo Anh",
            image: "assets/images/thao-anh.png",
            role: "CMO Adsota",
            text: "\u2022 Thạc sĩ Quan hệ Công chúng - Học viện Báo chí và Tuyên truyền\n\u2022 CMO Adsota Agency\n\u2022 Giảng viên Đại học Đại Nam, Học viện Báo chí và Tuyên truyền\n\u2022 Thành viên chính thức của CSMO Vietnam (CLB giám đốc Sales và Marketing Việt Nam)\n\u2022 Từng là cán bộ ban truyền thông tập đoàn FPT\n\u2022 Trưởng nhóm quản trị thương hiệu Appota Group\n\u2022 Tư vấn xây dựng và phát triển thương hiệu cho các doanh nghiệp",
          ),
          SizedBox(width: 61 * scale),
          TeacherCard(
            scale: scale,
            name: "Anh Đặng Phú Vinh",
            image: "assets/images/phu-vinh.png",
            role: "CEO Adsota",
            text: "\u2022 CEO của Adsota Agency\n\u2022 CCO (Giám đốc kinh doanh) của OTA Network.\n\u2022 Anh có 8 năm hoạt động trong lĩnh vực Marketing và 3 năm trong Chuyển đổi số\n\u2022 Là một chuyên gia trong việc triển khai giải pháp marketing tổng thể cho doanh nghiệp, trong đó có các doanh nghiệp thuộc VNR500.\n\u2022 Từng hợp tác và xây dựng mối quan hệ mật thiết với các khách hàng tiêu biểu trong ngành ngân hàng, viễn thông, giáo dục như: Techcombank, Traveloka, Phenikaa, Detech, Viettel,..\n\u2022 Là giảng viên thỉnh giảng uy tín tại Đại học Kinh tế Quốc dân và Học viện Báo chí Tuyên truyền.",
          ),
          SizedBox(width: 61 * scale),
          TeacherCard(
            scale: scale,
            name: "Anh Lương Thế Long",
            image: "assets/images/the-long.png",
            role: "Digital Marketing Manager Adsota",
            text: "\u2022 Digital Marketing Manager tại Adsota Agency\n\u2022 CCO (Giám đốc kinh doanh) của OTA Network.\n\u2022 Có kinh nghiệm 5 năm xây dựng và thực thi các kế hoạch, chiến lược Marketing cho nhiều thương hiệu lớn như Techcombank, Detech,  Phenikaa...\n\u2022 Là giám khảo các cuộc thi Marketing Việt Nam",
          ),
        ],
      );
    } else {
      return const Padding(
        padding: EdgeInsets.only(left: 16, right: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TeacherCard(
              scale: 1,
              name: "Chị Hoàng Thảo Anh",
              image: "assets/images/thao-anh.png",
              role: "CMO Adsota",
              text: "\u2022 Thạc sĩ Quan hệ Công chúng - Học viện Báo chí và Tuyên truyền\n\u2022 CMO Adsota Agency\n\u2022 Giảng viên Đại học Đại Nam, Học viện Báo chí và Tuyên truyền\n\u2022 Thành viên chính thức của CSMO Vietnam (CLB giám đốc Sales và Marketing Việt Nam)\n\u2022 Từng là cán bộ ban truyền thông tập đoàn FPT\n\u2022 Trưởng nhóm quản trị thương hiệu Appota Group\n\u2022 Tư vấn xây dựng và phát triển thương hiệu cho các doanh nghiệp",
            ),
            SizedBox(height: 20),
            TeacherCard(
              scale: 1,
              name: "Anh Đặng Phú Vinh",
              image: "assets/images/phu-vinh.png",
              role: "CEO Adsota",
              text: "\u2022 CEO của Adsota Agency\n\u2022 CCO (Giám đốc kinh doanh) của OTA Network.\n\u2022 Anh có 8 năm hoạt động trong lĩnh vực Marketing và 3 năm trong Chuyển đổi số\n\u2022 Là một chuyên gia trong việc triển khai giải pháp marketing tổng thể cho doanh nghiệp, trong đó có các doanh nghiệp thuộc VNR500.\n\u2022 Từng hợp tác và xây dựng mối quan hệ mật thiết với các khách hàng tiêu biểu trong ngành ngân hàng, viễn thông, giáo dục như: Techcombank, Traveloka, Phenikaa, Detech, Viettel,..\n\u2022 Là giảng viên thỉnh giảng uy tín tại Đại học Kinh tế Quốc dân và Học viện Báo chí Tuyên truyền.",
            ),
            SizedBox(height: 20),
            TeacherCard(
              scale: 1,
              name: "Anh Lương Thế Long",
              image: "assets/images/the-long.png",
              role: "Digital Marketing Manager Adsota",
              text: "\u2022 Digital Marketing Manager tại Adsota Agency\n\u2022 CCO (Giám đốc kinh doanh) của OTA Network.\n\u2022 Có kinh nghiệm 5 năm xây dựng và thực thi các kế hoạch, chiến lược Marketing cho nhiều thương hiệu lớn như Techcombank, Detech,  Phenikaa...\n\u2022 Là giám khảo các cuộc thi Marketing Việt Nam",
            ),
          ],
        ),
      );
    }
  }
}

