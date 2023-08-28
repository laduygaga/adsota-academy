import 'package:flutter/material.dart';
import 'molecules/after_course.dart';
import 'molecules/orientation.dart';
import 'molecules/course.dart';
import 'molecules/teacher.dart';
import 'molecules/intro.dart';
import 'molecules/title.dart';
import 'molecules/register_contact.dart';

class MainContent extends StatelessWidget {

  final GlobalKey registerFormKey;

  const MainContent({
    Key? key,
    required this.registerFormKey,
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
    children.add(_buildContent(context));
    return children;
  }

  Widget _buildContent(BuildContext context) {
    return Column(
      children: [
        _buildTitle(context),
        _buildIntro(context),
        _buildTeacher(context),
        _buildCourse(context),
        _buildOrientation(context),
        _buildAfterCourse(context),
        _buildRegister(context),
      ],
    );
  }

  Widget _buildTitle(BuildContext context) {
    return OTATitle(
        registerFormKey: registerFormKey,
    );
  }

  Widget _buildIntro(BuildContext context)  {
    return const Intro(
    );
  }

  Widget _buildTeacher(BuildContext context)  {
    double maxWidth = MediaQuery.of(context).size.width;
    double fontSize = 64 * maxWidth / 1440;
    if (maxWidth <= 600) {
      fontSize = 38;
    }

    return Container(
      width: maxWidth,
      color: const Color(0xFFFFFFFF),
      child:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 32),
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
          Teacher(
            maxWidth: maxWidth,
          ),
          const SizedBox(height: 32),
        ],
      ),
    );
  }

  Widget _buildCourse(BuildContext context)  {
    double maxWidth = MediaQuery.of(context).size.width;
    double fontSize = 64 * maxWidth / 1440;
    if (maxWidth < 600) {
      fontSize = 32;
    } else {
      fontSize = 48 * maxWidth / 1440;
    }
    return Container(
      width: maxWidth,
      // height: height,
      color: const Color(0xFF0353CC),
      child:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 74 * maxWidth / 1440),
          Text.rich(
            textAlign: TextAlign.center,
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
          Course(
            maxWidth: maxWidth,
            registerFormKey: registerFormKey,
          ),
          SizedBox(height: 94 * maxWidth / 1440),
        ],
      ),
    );
  }

  Widget _buildOrientation(BuildContext context) {
    double maxWidth =  MediaQuery.of(context).size.width;
    return Container(
      padding: const EdgeInsets.only(top: 59, bottom: 59),
      width: maxWidth,
      color: const Color(0xFFE4EFFF),
      child: OTAOrientation(
        maxWidth: maxWidth,
      ),
    );
  }

  Widget _buildAfterCourse(BuildContext context) {
    return const AfterCourse(
    );
  }

  Widget _buildRegister(BuildContext context) {
    return RegisterContact(
      key: registerFormKey
    );
  }

}
