import 'package:flutter/material.dart';


import 'molecules/appbar.dart';
import 'main_content.dart';

class MyHomePage extends StatelessWidget {

  final registerFormKey = GlobalKey();
  final titleKey = GlobalKey();
  final introKey = GlobalKey();
  final teacherKey = GlobalKey();
  final courseKey = GlobalKey();
  final orientationKey = GlobalKey();
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
                introKey: introKey,
                teacherKey    : teacherKey,
                courseKey     : courseKey,
                orientationKey: orientationKey,
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 0),
            sliver: MainContent(
              registerFormKey: registerFormKey,
              titleKey: titleKey,
              introKey: introKey,
              teacherKey    : teacherKey,
              courseKey     : courseKey,
              orientationKey: orientationKey,
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
            automaticallyImplyLeading: false,
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
                registerFormKey: registerFormKey,
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 0),
            sliver: MainContent(
              registerFormKey: registerFormKey,
              titleKey: titleKey,
              introKey: introKey,
              teacherKey    : teacherKey,
              courseKey     : courseKey,
              orientationKey: orientationKey,
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
                _scrollToPosition(introKey.currentContext!);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text("Đội Ngũ Giảng Viên"),
              onTap: () {
                _scrollToPosition(teacherKey.currentContext!);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text("Khóa học"),
              onTap: () {
                _scrollToPosition(courseKey.currentContext!);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text("Khóa học dành cho ai"),
              onTap: () {
                _scrollToPosition(orientationKey.currentContext!);
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
              registerFormKey: registerFormKey,
              titleKey: titleKey,
              introKey: introKey,
              teacherKey    : teacherKey,
              courseKey     : courseKey,
              orientationKey: orientationKey,
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
