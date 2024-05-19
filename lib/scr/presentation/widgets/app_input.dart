import 'package:flutter/material.dart';

class AppInput extends StatelessWidget {
  const AppInput(
      {this.hintText,
      this.border,
      this.fillColor,
      this.prefixIcon,
      this.hintStyle,
      this.suffixIcon,
      this.obscureText,
      this.enabledBorder,
      this.focusedBorder,
      required this.onChanged,
      super.key});

  final double br = 15;
  final String? hintText;
  final Color? fillColor;
  final bool? obscureText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final InputBorder? border;
  final TextStyle? hintStyle;
  final InputBorder? enabledBorder;
  final InputBorder? focusedBorder;
  final void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.only(
          left: 18,
        ),
        filled: true, // don't forget this line to change background color
        hintText: hintText,
        fillColor: fillColor ?? Colors.white,
        hintStyle: hintStyle ??
            TextStyle(
              color: Colors.grey[400],
            ),
        enabledBorder: enabledBorder ??
            OutlineInputBorder(
              borderSide: const BorderSide(
                color: Colors.grey,
                width: .5,
              ),
              borderRadius: BorderRadius.circular(br),
            ),
        focusedBorder: focusedBorder ??
            OutlineInputBorder(
              borderSide: const BorderSide(
                color: Colors.grey,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(br),
            ),
        border: border ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(br),
            ),
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
      ),
      autofocus: false,
      autocorrect: false,
      obscureText: obscureText ?? false,
      onChanged: onChanged,
      style: const TextStyle(
        color: Colors.black,
        fontSize: 14,
      ),
      textAlign: TextAlign.left,
    );
  }
}
