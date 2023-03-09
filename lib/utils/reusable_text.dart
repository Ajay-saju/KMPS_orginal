import 'package:flutter/material.dart';

class ReusableText extends StatelessWidget {
  final String? title;
  final double? size;
  final double? spacing;
  final FontWeight? weight;
  final Color? color;
  final FontStyle? fontStyle;
  final TextAlign? textAlign;
  const ReusableText.reusableText(
      {Key? key,
      this.title,
      this.size,
      this.weight,
      this.color,
      this.fontStyle,
      this.textAlign,
      this.spacing})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Text(
        title!,
        textAlign: textAlign,
        style: TextStyle(
          letterSpacing: spacing,
          fontStyle: fontStyle,
          fontWeight: weight,
          color: color,
          fontSize: size,
        ),
      ),
    );
  }
}
