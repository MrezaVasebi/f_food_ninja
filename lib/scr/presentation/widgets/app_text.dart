import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  const AppText(
      {required this.lbl,
      this.style,
      this.overflow,
      this.maxLines,
      this.textAlign,
      super.key});

  final String? lbl;
  final int? maxLines;
  final TextStyle? style;
  final TextAlign? textAlign;
  final TextOverflow? overflow;

  @override
  Widget build(BuildContext context) {
    return Text(
      lbl ?? '',
      style: style,
      maxLines: maxLines,
      overflow: overflow,
      textAlign: textAlign,
    );
  }
}
