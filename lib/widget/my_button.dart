import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text;
  final TextStyle? textStyle;
  final IconData? iconData;
  final double? width;
  final double? height;
  final Color color;
  final VoidCallback? onPressed;
  final Decoration? decoration;
  const MyButton(
      {super.key,
      this.decoration,
      this.iconData,
      this.textStyle,
      required this.text,
      this.width,
      this.height,
      required this.color,
      this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      decoration: BoxDecoration(
        color:
            color, // Moved the color to the decoration for the curve to apply
        borderRadius: BorderRadius.circular(10), // Curved corners
      ),
      height: height,
      child: MaterialButton(
        onPressed: () {},
        child: Text(
          text,
          style: textStyle,
        ),
      ),
    );
  }
}
