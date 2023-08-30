import 'package:flutter/material.dart';
import 'image_animation.dart';

class TeacherCard extends StatefulWidget {
  final String? name;
  final String? image;
  final String? role;
  final String? text;
  final double? scale;
  const TeacherCard({
    Key? key,
    this.name,
    this.image,
    this.role,
    this.text,
    this.scale,
  }) : super(key: key);

  @override
  TeacherCardState createState() => TeacherCardState();
}

class TeacherCardState extends State<TeacherCard> {
  bool isHovered = false;
  bool isTapped = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          isHovered = true;
        });
      },
      onExit: (_) {
        setState(() {
          isHovered = false;
        });
      },
      child: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ImageAnimation(
                image: widget.image,
                scale: widget.scale!,
                text: widget.text,
                isTapped: isTapped,
                onTap: (bool sTapped) {
                  setState(() {
                    isTapped = sTapped;
                  });
                },
              ),
              const SizedBox(height: 30),
              Text(
                widget.name!,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: const Color(0xFF0353CC),
                  fontSize: 26 * widget.scale!,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 2),
              Text(
                widget.role!,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: const Color(0xFF121825),
                  fontSize: 22 * widget.scale!,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          ),
          if (isHovered)
            Positioned(
              bottom: widget.scale! > 600/1440?  (-120) * widget.scale! :  -MediaQuery.of(context).size.height /2,
              left: 0,
              right: 0,
              child: InkWell(
                child: const SizedBox(
                  child: Image(
                    image: AssetImage('assets/images/arrow_up.png'),
                  ),
                ),
                onTap: () {
                  setState(() {
                    isTapped = true;
                  });
                },
              ),
            ),

          // if screenwith < 600, always show arrow
          if (MediaQuery.of(context).size.width <= 600)
            Positioned(
              bottom: widget.scale! > 600/1440?  (-120) * widget.scale! :  -MediaQuery.of(context).size.height /2,
              left: 0,
              right: 0,
              child: InkWell(
                child: const SizedBox(
                  child: Image(
                    image: AssetImage('assets/images/arrow_up.png'),
                  ),
                ),
                onTap: () {
                  setState(() {
                    isTapped = true;
                  });
                },
              ),
            ),
        ],
      ),
    );
  }
}

