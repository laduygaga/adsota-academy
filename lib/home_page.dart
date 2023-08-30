import 'package:flutter/material.dart';


import 'molecules/appbar.dart';
import 'main_content.dart';

class MyHomePage extends StatelessWidget {

  final registerFormKey1 = GlobalKey();
  final registerFormKey2 = GlobalKey();
  final registerFormKey3 = GlobalKey();
  final titleKey1 = GlobalKey();
  final introKey1 = GlobalKey();
  final teacherKey1 = GlobalKey();
  final courseKey1 = GlobalKey();
  final orientationKey1 = GlobalKey();
  MyHomePage({Key? key}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 1200) {
            return _buildWideLayout();
          } else {
            return _buildSmallLayout(context);
          }
        },
    );
  }

  Widget _buildWideLayout() {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
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
                registerFormKey: registerFormKey1,
                titleKey1: titleKey1,
                introKey1: introKey1,
                teacherKey1    : teacherKey1,
                courseKey1     : courseKey1,
                orientationKey1: orientationKey1,
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 0),
            sliver: MainContent(
              registerFormKey1: registerFormKey1,
              registerFormKey2: registerFormKey2,
              registerFormKey3: registerFormKey3,
              titleKey1: titleKey1,
              introKey1: introKey1,
              teacherKey1    : teacherKey1,
              courseKey1     : courseKey1,
              orientationKey1: orientationKey1,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildNarrowLayout() {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            forceElevated: true,
            shadowColor: Colors.black,
            collapsedHeight: 78,
            expandedHeight: 78,
            pinned: true,
            stretch: true,
            flexibleSpace: FlexibleSpaceBar(
              background: MyAppBar(
                maxWidth: 1200,
                logo: "assets/images/logo.svg",
                widthLogo: 29.73,
                heightLogo: 46,
                backgroundColor: "0xFF0353CC",
                registerFormKey: registerFormKey1,
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 0),
            sliver: MainContent(
              registerFormKey1: registerFormKey1,
              registerFormKey2: registerFormKey2,
              registerFormKey3: registerFormKey3,
              titleKey1: titleKey1,
              introKey1: introKey1,
              teacherKey1    : teacherKey1,
              courseKey1     : courseKey1,
              orientationKey1: orientationKey1,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSmallLayout(BuildContext context) {
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
          registerFormKey: registerFormKey1,
          titleKey1: titleKey1,
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
                _scrollToPosition(introKey1.currentContext!);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text("Đội Ngũ Giảng Viên"),
              onTap: () {
                _scrollToPosition(teacherKey1.currentContext!);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text("Khóa học"),
              onTap: () {
                _scrollToPosition(courseKey1.currentContext!);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text("Khóa học dành cho ai"),
              onTap: () {
                _scrollToPosition(orientationKey1.currentContext!);
                Navigator.pop(context);
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
            sliver: MainContent(
              registerFormKey1: registerFormKey1,
              registerFormKey2: registerFormKey2,
              registerFormKey3: registerFormKey3,
              titleKey1: titleKey1,
              introKey1: introKey1,
              teacherKey1    : teacherKey1,
              courseKey1     : courseKey1,
              orientationKey1: orientationKey1,
            ),
          ),
        ],
      ),
    );
  }

  void _scrollToPosition(BuildContext context) {
    Scrollable.ensureVisible(
      context,
      duration: const Duration(
        milliseconds: 500,
      ),
    );
  }
}
