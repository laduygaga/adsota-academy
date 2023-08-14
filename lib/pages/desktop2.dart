
import 'package:flutter/material.dart';

import '../molecules/appbar.dart';
import '../molecules/register_form.dart';
import '../molecules/contact.dart';
import '../templates/course_page.dart';

class Desktop2Page extends StatelessWidget {
  const Desktop2Page({Key? key}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          // return _buildWideLayout();
          if (constraints.maxWidth > 1200) {
            return _buildWideLayout();
          // } else if (constraints.maxWidth > 600 &&
          //     constraints.maxWidth <= 1200) {
          //   return _buildNarrowLayout();
          } else {
            return _buildSmallLayout();
          }
        },
      ),
    );
  }

  Widget _buildWideLayout() {
    return const Scaffold(
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
              ),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 0),
            sliver: MainContent(),
          ),
        ],
      ),
    );
  }

  Widget _buildSmallLayout() {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(int.parse("0xFF0353CC")),
        title: const MyAppBar(
          maxWidth: 600,
          logo: "assets/images/logo.svg",
          widthLogo: 29.73,
          heightLogo: 46,
          backgroundColor: "0xFF0353CC",
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
      body: const CustomScrollView(
        slivers: [
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 0),
            sliver: MainContent(),
          ),
        ],
      ),
    );
  }

}


class MainContent extends StatelessWidget {

  const MainContent({super.key});

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
    children.add(_buildRegister(context));
    return children;
  }

  Widget _buildBrandingCourse(BuildContext context) {
    // bool isWide = MediaQuery.of(context).size.width > 1200;
    // bool isNarrow = MediaQuery.of(context).size.width > 600 && MediaQuery.of(context).size.width < 1200;
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        bool isWideLayout = constraints.maxWidth >= 1440;
        bool isNarrowLayout = constraints.maxWidth > 600 && constraints.maxWidth < 1440;
        bool isSmallLayout = constraints.maxWidth <= 600;
        return CourseTemplate(
          title1: "TỔNG QUAN VỀ KHÓA HỌC\n",
          title2: "BRANDING - MARKETING\n",
          content: "Khóa học giới thiệu những kiến thức cơ bản về thương hiệu: Khái niệm,\nbản chất, đặc tính, định vị thương hiệu trên thị trường.\n\nKhóa học tập trung trang bị cho người học những mô hình có tính nguyên\ntắc với việc xây dựng, phát triển thương hiệu và giá trị của thương hiệu trên thị trường.\n Cung cấp tư duy hiện đại về quản trị thương hiệu, hình ảnh của công ty\nqua thương hiệu và khả năng ra quyết định về marketing liên quan đến\nthương hiệu.",
          isWideLayout: isWideLayout,
          isNarrowLayout: isNarrowLayout,
          isSmallLayout: isSmallLayout,
          avatar: "assets/images/Chị Hoàng Thảo Anh - CMO Adsota Agency 1.png",
          name: "Chị Hoàng Thảo Anh",
          role: "CMO Adsota",
          courseImage: "assets/images/branding-marketing-big.png",
        );
      },
    );
  }


  Widget _buildRegister(BuildContext context) {
    double height;
    double maxWidth = MediaQuery.of(context).size.width;
    if (maxWidth <= 800) {
      height = 1076 * 1.7;
    } else {
      height = 700;
    }
    if (maxWidth >= 1440) {
      maxWidth = 1440;
    }
    if (maxWidth > 800) {
      return Container(
        width: maxWidth,
        height: height,
        color: const Color(0xFFF8FBFF),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox( width: 55 * maxWidth / 1440),
            RegistrationForm(maxWidth: maxWidth),
            Contact(maxWidth: maxWidth),
          ],
        ),
      );
    } else {
      return Container(
        width: maxWidth,
        height: height,
        color: const Color(0xFFF8FBFF),
        child: Center(
          child: Container(
            width: 600,
            height: 1200,
            decoration: BoxDecoration(
              color: const Color(0xFFE0EDFF),
              borderRadius: BorderRadius.circular(24),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RegistrationForm(maxWidth: maxWidth),
                const SizedBox( height: 20),
                const Contact(maxWidth: 600),
              ],
            ),
          ),
        ),
      );
    }
  }

}
