import 'package:flutter/material.dart';
import 'molecules/register_form.dart';
import 'molecules/contact.dart';
import 'molecules/after_course.dart';
import 'molecules/orientation.dart';
import 'molecules/course.dart';
import 'molecules/teacher.dart';
import 'molecules/intro.dart';
import 'molecules/title.dart';

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
    children.add(_buildTitle(context));
    children.add(_buildIntro(context));
    children.add(_buildTeacher(context));
    children.add(_buildCourse(context));
    children.add(_buildOrientation(context));
    children.add(_buildAfterCourse(context));
    children.add(_buildRegister(context));
    return children;
  }

  Widget _buildTitle(BuildContext context) {
    bool isWide = MediaQuery.of(context).size.width >= 1440;
    bool isNarrow = MediaQuery.of(context).size.width > 600 && MediaQuery.of(context).size.width < 1440;
    return Container(
      width: isWide ? 1440 : isNarrow ? 1200 : 600,
      height: isWide ? 656 : isNarrow ? 456 : 656,
      color: const Color(0xFF0353CC),
      child: const OTATitle(),
    );
  }

  Widget _buildIntro(BuildContext context)  {
    bool isWide = MediaQuery.of(context).size.width > 1200;
    bool isNarrow = MediaQuery.of(context).size.width > 600 && MediaQuery.of(context).size.width < 1200;
    return Container(
      width: isWide ? 1440 : isNarrow ? 1200 : 600,
      height: isWide ? 384 : isNarrow ? 384 : 384,
      color: const Color(0xFFFFFFFF),
      child: const Intro(),
    );
  }

  Widget _buildTeacher(BuildContext context)  {
    double height;
    double width;
    double maxWidth = MediaQuery.of(context).size.width;
    if (maxWidth > 1440) {
      maxWidth = 1440;
    }
    double fontSize = 64 * maxWidth / 1440;
    if (maxWidth < 600) {
      height = 1900;
      width = 352;
      fontSize = 38;
    } else {
      height = 1000 * maxWidth / 1440;
      width = 1440 * maxWidth / 1440;
    }
    if (width > 1440) {
      width = 1440;
    }

    return Container(
      width: width,
      height: height,
      color: const Color(0xFFFFFFFF),
      child:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text.rich(
            TextSpan(
              text: "Đội ngũ giảng viên",
              style: TextStyle(
                color: const Color(0xFF121825),
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 62 * maxWidth / 1440),
          const Teacher(),
        ],
      ),
    );
  }

  Widget _buildCourse(BuildContext context)  {
    double height;
    double maxWidth = MediaQuery.of(context).size.width;
    double fontSize = 64 * maxWidth / 1440;
    if (maxWidth < 600) {
      height = 650 * 2;
      fontSize = 32;
    } else {
      height = 755 * maxWidth / 1440;
      fontSize = 48 * maxWidth / 1440;
    }
    if (maxWidth > 1440) {
      maxWidth = 1440;
    }
    return Container(
      width: maxWidth,
      height: height,
      color: const Color(0xFF0353CC),
      child:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text.rich(
            TextSpan(
              text: "Các khóa học tại Adsota Academy",
              style: TextStyle(
                color: const Color(0xFFFFFFFF),
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 74 * maxWidth / 1440),
          const Course(),
        ],
      ),
    );
  }

  Widget _buildOrientation(BuildContext context) {
    bool isWide = MediaQuery.of(context).size.width >= 1440;
    bool isNarrow = MediaQuery.of(context).size.width > 600 && MediaQuery.of(context).size.width < 1440;
    return Container(
      width: isWide ? 1440 : isNarrow ? 1200 : 600,
      height: isWide ? 656 : isNarrow ? 456 : 656,
      color: const Color(0xFFE4EFFF),
      child: const OTAOrientation(),
    );
  }

  Widget _buildAfterCourse(BuildContext context) {
    double height;
    double maxWidth = MediaQuery.of(context).size.width;
    if (maxWidth < 600) {
      height = 650 * 2;
    } else {
      height = 1076 * maxWidth / 1440;
    }
    if (maxWidth > 1440) {
      maxWidth = 1440;
    }
    return Container(
      width: maxWidth,
      height: height,
      color: const Color(0xFFFFFFFF),
      child: const AfterCourse(),
    );
  }

  Widget _buildRegister(BuildContext context) {
    bool isWide = MediaQuery.of(context).size.width >= 1440;
    bool isNarrow = MediaQuery.of(context).size.width > 600 && MediaQuery.of(context).size.width < 1440;
    return Container(
      width: isWide ? 1440 : isNarrow ? 1200 : 600,
      height: isWide ? 780 : isNarrow ? 780 : 780,
      color: const Color(0xFFF8FBFF),
      child: Center(
        child: Container(
          width: isWide ? 1180 : isNarrow ? 980 : 580,
          height: isWide ? 600 : isNarrow ? 600 : 600,
          decoration: BoxDecoration(
            color: const Color(0xFFE0EDFF),
            borderRadius: BorderRadius.circular(24),
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox( width: 55),
              // Register
              RegistrationForm(),
              SizedBox( width: 55),
              // Contact
              Contact(),
            ],
          ),
        ),
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
