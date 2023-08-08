import 'package:flutter/material.dart';

class TeacherCard extends StatefulWidget {
  final String? name;
  final String? image;
  final String? role;
  const TeacherCard({Key? key, this.name, this.image, this.role}) : super(key: key);

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
              children: [
                SizedBox(
                  width: 352,
                  height: 490,
                  child: Image.asset(
                    widget.image!,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 30),
                SizedBox(
                  width: 352,
                  height: 30,
                  child: Text(
                    widget.name!,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Color(0xFF0353CC),
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 2),
                SizedBox(
                  width: 352,
                  height: 30,
                  child: Text(
                    widget.role!,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Color(0xFF121825),
                      fontSize: 16,
                      fontWeight: FontWeight.w100,
                    ),
                  ),
                ),
              ],
            ),
            AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              alignment: Alignment.bottomCenter,
              height: isHovered ? 60 : 0,
              child: Container(
                width: 352,
                height: 60,
                color: Colors.blue, // Change this to your desired button color
                child: Center(
                  child: GestureDetector(
                    onTap: () {
                      // Slide up to detail card
                    },
                    child: const Text(
                      'View Details',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
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

