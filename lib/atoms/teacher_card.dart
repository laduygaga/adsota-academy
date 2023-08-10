import 'package:flutter/material.dart';

class TeacherCard extends StatefulWidget {
  final String? name;
  final String? image;
  final String? role;
  final double? scale;
  const TeacherCard({
    Key? key,
    this.name,
    this.image,
    this.role,
    this.scale,
  }) : super(key: key);

  @override
  TeacherCardState createState() => TeacherCardState();
}

class TeacherCardState extends State<TeacherCard> {
  bool isHovered = false;

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
      child: GestureDetector(
        onTap: () {
          // Navigate or show the detail card when button is pressed
          // Example: Navigator.push(context, MaterialPageRoute(builder: (context) => DetailCard()));
        },
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                    width: 352 * widget.scale!,
                    height: 490 * widget.scale!,
                    widget.image!,
                    fit: BoxFit.contain,
                  ),
                // ),
                const SizedBox(height: 30),
                Text(
                    widget.name!,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: const Color(0xFF0353CC),
                      fontSize: 24 * widget.scale!,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                // ),
                const SizedBox(height: 2),
                Text(
                    widget.role!,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: const Color(0xFF121825),
                      fontSize: 16 * widget.scale!,
                      fontWeight: FontWeight.w100,
                    ),
                  ),
                // ),
              ],
            ),
            AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              // alignment: Alignment.center,
              height: isHovered ? 60 : 0,
              child: Container(
                width: 352 * widget.scale!,
                height: 60 * widget.scale!,
                color: Colors.blue, // Change this to your desired button color
                child: Center(
                  child: GestureDetector(
                    onTap: () {
                      // Slide up to detail card
                    },
                    child: Text(
                      'View Details',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18 * widget.scale!,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

