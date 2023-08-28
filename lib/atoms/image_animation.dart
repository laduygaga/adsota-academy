import 'package:flutter/material.dart';

class ImageAnimation extends StatefulWidget {
  final String? image;
  final String? text;
  bool isTapped;
  dynamic Function(bool sTapped) onTap ;
  final double? scale;
  ImageAnimation({
    Key? key,
    this.image,
    this.text,
    required this.isTapped,
    required this.onTap,
    this.scale,
  }) : super(key: key);

  @override
  ImageAnimationState createState() => ImageAnimationState();
}

class ImageAnimationState extends State<ImageAnimation> {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            height: 588 * widget.scale!,
            width: 352 * widget.scale!,
            decoration: BoxDecoration(
              color: Colors.white,
              border: widget.isTapped
                  ? Border.all(
                      color: const Color(0xFF0353CC),
                      width: 1,
                    )
                  : null,
              borderRadius: BorderRadius.circular(24),
            ),
            child: Stack(
              children: [
                AnimatedContainer(
                  height: !widget.isTapped ? 588.0 * widget.scale! : 130.0 * widget.scale!,
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.fastOutSlowIn,
                  decoration: BoxDecoration(
                    color: const Color(0xFF0353CC),
                    borderRadius: BorderRadius.only(
                      topLeft: const Radius.circular(24),
                      topRight: const Radius.circular(24),
                      bottomLeft: widget.isTapped ? const Radius.circular(0) : const Radius.circular(24),
                      bottomRight: widget.isTapped ? const Radius.circular(0) : const Radius.circular(24),
                    ),
                  ),
                  child:  widget.isTapped? 
                    Align(
                    alignment: Alignment.topRight,
                    child: IconButton(
                      onPressed: () {
                        setState(() {
                          widget.onTap(false);
                        });
                      },
                      icon: const Icon(
                        Icons.close,
                        color: Colors.white,
                      ),
                    ),
                  )
                  : null,
                ),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(height: widget.isTapped ? 65 * widget.scale! : 0),
                      AnimatedContainer(
                        height: !widget.isTapped ? 588.0 * widget.scale! : 130.0 * widget.scale!,
                        width: !widget.isTapped ? 352 * widget.scale! : 130.0 * widget.scale!,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.fastOutSlowIn,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: widget.isTapped
                              ? Border.all(
                                  color: const Color(0xFFFFFFFF),
                                  width: 5,
                                )
                              : null,
                          borderRadius: BorderRadius.circular(!widget.isTapped ? 24 : 130),
                          image: DecorationImage(
                            image: AssetImage(widget.image!),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      if (widget.isTapped) 
                      Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          widget.text!,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

