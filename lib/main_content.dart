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
    children.add(_buildTitle());
    children.add(_buildIntro());
    children.add(_buildTeacher());
    children.add(_buildCourse());
    children.add(_buildOrientation());
    children.add(_buildAfterCourse());
    children.add(_buildRegister(context));
    return children;
  }

  Widget _buildTitle() {
    return Container(
      width: 1440,
      height: 656,
      color: const Color(0xFF0353CC),
      child: const OTATitle(),
    );
  }

  Widget _buildIntro()  {
    return Container(
      width: 1440,
      height: 384,
      color: const Color(0xFFFFFFFF),
      child: const Intro(),
    );
  }

  Widget _buildTeacher()  {
    return Container(
      width: 1440,
      height: 807,
      color: const Color(0xFFFFFFFF),
      child:  const Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 60),
            child: Text.rich(
              TextSpan(
                text: "Đội ngũ giảng viên",
                style: TextStyle(
                  color: Color(0xFF121825),
                  fontSize: 64,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(height: 30),
          Teacher(),
        ],
      ),
    );
  }

  Widget _buildCourse()  {
    return Container(
      width: 1440,
      height: 755,
      color: const Color(0xFF0353CC),
      child:  const Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 72),
            child: Text.rich(
              TextSpan(
                text: "Các khóa học tại Adsota Academy",
                style: TextStyle(
                  color: Color(0xFFFFFFFF),
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(height: 74),
          Course(),
        ],
      ),
    );
  }

  Widget _buildOrientation() {
    return Container(
      width: 1440,
      height: 654,
      color: const Color(0xFFE4EFFF),
      child: const OTAOrientation(),
    );
  }

  Widget _buildAfterCourse() {
    return Container(
      width: 1440,
      height: 1076,
      color: const Color(0xFFFFFFFF),
      padding: const EdgeInsets.only(top: 154),
      child: const AfterCourse(),
    );
  }

  Widget _buildRegister(BuildContext context) {
    return Container(
      width: 1440,
      height: 780,
      color: const Color(0xFFF8FBFF),
      child: Center(
        child: Container(
          width: 1180,
          height: 600,
          decoration: BoxDecoration(
            color: const Color(0xFFE0EDFF),
            borderRadius: BorderRadius.circular(24),
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox( width: 80, height: 6),
              // Register
              RegistrationForm(),
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
