import 'package:flutter/material.dart';

import '../molecules/appbar.dart';
import '../templates/course_page.dart';

class Desktop3Page extends StatelessWidget {
  final GlobalKey registerFormKey;
  const Desktop3Page({
    Key? key,
    required this.registerFormKey
    }) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return _buildWideLayout(registerFormKey);
        } else {
          return _buildSmallLayout(registerFormKey);
        }
      },
    );
  }

  Widget _buildWideLayout(GlobalKey registerFormKey) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: false,
            forceElevated: true,
            shadowColor: Colors.black,
            collapsedHeight: 78,
            expandedHeight: 78,
            pinned: true,
            stretch: true,
            flexibleSpace: FlexibleSpaceBar(
              background: MyAppBar(
                maxWidth: 1440,
                logo: "assets/images/logo.svg",
                widthLogo: 29.73,
                heightLogo: 46,
                backgroundColor: "0xFF0353CC",
                registerFormKey: registerFormKey,
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 0),
            sliver: MainContent(registerFormKey: registerFormKey),
          ),
        ],
      ),
    );
  }

  Widget _buildSmallLayout(GlobalKey registerFormKey) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(int.parse("0xFF0353CC")),
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        title: MyAppBar(
          maxWidth: 600,
          logo: "assets/images/logo.svg",
          widthLogo: 29.73,
          heightLogo: 46,
          backgroundColor: "0xFF0353CC",
          registerFormKey: registerFormKey,
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color(int.parse("0xFF0353CC")), // Set the same background color as AppBar
              ),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Adsota",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      letterSpacing: 2,
                      height: 1,
                    ),
                  ),
                  Text(
                    "Academy",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w100,
                      color: Colors.white,
                      letterSpacing: 1,
                    ),
                  ),
                ],
              ),
            ),
            // Move your middle components here
            ListTile(
              title: const Text("Giới Thiệu"),
              onTap: () {
                // Handle drawer item tap
              },
            ),
            ListTile(
              title: const Text("Đội Ngũ Giảng Viên"),
              onTap: () {
                // Handle drawer item tap
              },
            ),
            ListTile(
              title: const Text("Khóa học"),
              onTap: () {
                // Handle drawer item tap
              },
            ),
            ListTile(
              title: const Text("Khóa học dành cho ai"),
              onTap: () {
                // Handle drawer item tap
              },
            ),
            // Add more drawer items as needed
          ],
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 0),
            sliver: MainContent(registerFormKey: registerFormKey),
          ),
        ],
      ),
    );
  }

}


class MainContent extends StatelessWidget {
  final GlobalKey registerFormKey;
  const MainContent({
    Key? key,
    required this.registerFormKey
    }) : super(key: key);

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
    children.add(_buildBrandingCourse(context));
    return children;
  }

  Widget _buildBrandingCourse(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double scale  = screenWidth / 1200;
    if (screenWidth > 1200) {
      scale = 1;
    }
    return CourseTemplate(
      registerFormKey: registerFormKey,
      scale: scale,
      title1: "TỔNG QUAN VỀ KHÓA HỌC\n",
      title2: "DIGITAL MARKETING\n",
      summaryContent: "Khóa học giới thiệu những kiến thức cơ bản về Digital Marketing, bản chất của các nền tảng số ứng dụng trong hoạt động marketing.\n\nBên cạnh đó, khóa học cung cấp cho người học phương pháp xây dựng và thực thi chiến dịch quảng cáo một cách hiệu quả, phù hợp cho thương hiệu.",
      avatar1: "assets/images/anh-dang-phu-vinh-ceo-adsota.png",
      avatar2: "assets/images/the-long-manager-adsota.png",
      name1: "Anh Đặng Phú Vinh",
      role1: "CEO Adsota",
      name2: "Anh Lương Thế Long",
      role2: "Digital Marketing Manager Adsota",
      courseImage: "assets/images/digital-marketing-big.png",
      courseImageRefer: "assets/images/branding-mkt-3.png",
      courseContentTitle1: "Buổi 1: Tổng quan về Digital Marketing",
      courseContentTitle2: "Buổi 2: Performance Marketing",
      courseContentTitle3: "",
      courseContent1: "\u2022 Digital Marketing là gì?\n\u2022 Lợi ích của việc ứng dụng Digital Marketing?\n\u2022 Vị trí của Digital Marketing trong chiến lược Marketing tổng thể và xây dựng thương hiệu?",
      courseContent2: "\u2022 Performance Marketing là gì?\n\u2022 Có những công cụ phương pháp nào để giải quyết Performance Marketing?\n\u2022 Chạy quảng cáo là gì, trên các nền tảng nào? Chạy quảng cáo giải quyết những vấn đề gì của doanh nghiệp?\n\u2022 Làm sao để chạy quảng cáo tốt? Ai có thể chạy quảng cáo?\n\u2022 Demo chạy quảng cáo",
      courseContent3: "",
      courseValueTitle1: "Nắm vững nội dung về Digital Marketing",
      courseValueTitle2: "Có kỹ năng chạy quảng cáo",
      courseValueContent1: "\u2022 Bản chất khái niệm, vai trò ý nghĩa của Digital Marketing với doanh nghiệp\n\u2022 Bản chất, đặc điểm của các nền tảng số",
      courseValueContent2: "\u2022 Xây dựng, triển khai chiến dịch quảng cáo trên nền tảng số cho doanh nghiệp\n\u2022 Biết sử dụng các mẹo, bí quyết để tối ưu quảng cáo cho thương hiệu\n",
    );
  }

}
