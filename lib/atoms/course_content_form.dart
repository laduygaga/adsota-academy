import 'package:flutter/material.dart';

class CourseContentForm extends StatelessWidget{
  final String? title;
  final String? content;
  const CourseContentForm({
    Key? key,
    this.title,
    this.content,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // container with circle all 8, width 680
    // on top is color bar with title
    // below is content
    return Container(
      width: 680,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Color(0xFF0353CC), width: 2),
      ),
      child: Column(
        children: [
          Container(
            width: 680,
            height: 40,
            decoration: BoxDecoration(
              color: Color(0xFF0353CC),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8),
                topRight: Radius.circular(8),
              ),
            ),
            child: Center(
              child: Text(
                title!,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          Container(
            width: 680,
            padding: EdgeInsets.all(20),
            child: Text(
              content!,
              style: TextStyle(
                color: Color(0xFF4F4F4F),
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    );
  }

}
