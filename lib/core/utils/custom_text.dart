import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText(
    this.data, {
    super.key,
    this.color = Colors.white,
    this.fontSize = 18,
    this.fontWeight = FontWeight.w400,
    this.maxLines, 
    this.overflow,
  });
  final String data;
  final double fontSize;
  final FontWeight fontWeight;
  final Color color;
  final int? maxLines;
  final TextOverflow? overflow;

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
      ),
      maxLines: maxLines,
      overflow: overflow,
    );
  }
}
