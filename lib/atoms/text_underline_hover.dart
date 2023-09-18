import 'package:flutter/material.dart';

class UnderlinedTextWithHover extends StatefulWidget {
  final String text;
  final TextStyle style;
  final double underlinePadding;
  final VoidCallback? onPress;

  const UnderlinedTextWithHover({
    Key? key,
    required this.text,
    required this.style,
    this.onPress,
    this.underlinePadding = 2.0,
  }) : super(key: key);

  @override
  State<UnderlinedTextWithHover> createState() => _UnderlinedTextWithHoverState();
}

class _UnderlinedTextWithHoverState extends State<UnderlinedTextWithHover> {
  bool _isHovering = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) {
        setState(() {
          _isHovering = true;
        });
      },
      onExit: (_) {
        setState(() {
          _isHovering = false;
        });
      },
      child: GestureDetector(
        onTap: widget.onPress,
        child: Container(
          padding: EdgeInsets.only(bottom: widget.underlinePadding),
          decoration: _isHovering
              ? BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.white,
                      width: widget.style.decorationThickness ?? 1.0,
                    ),
                  ),
                )
              : null,
          child: Text(
            widget.text,
            style: widget.style.copyWith(
              decoration: TextDecoration.none,
            ),
          ),
        ),
      ),
    );
  }
}

