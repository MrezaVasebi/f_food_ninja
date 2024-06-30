import 'package:f_food_delivery/scr/presentation/constant/app_colors.dart';
import 'package:flutter/material.dart';

class AppInput extends StatelessWidget {
  const AppInput(
      {this.hintText,
      this.br,
      this.style,
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

  final double? br;
  final String? hintText;
  final Color? fillColor;
  final bool? obscureText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final InputBorder? border;
  final TextStyle? hintStyle;
  final InputBorder? enabledBorder;
  final InputBorder? focusedBorder;
  final TextStyle? style;
  final void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.only(left: 18),
        filled: true, // don't forget this line to change background color
        hintText: hintText,
        fillColor: fillColor ?? Colors.white,
        hintStyle: hintStyle ??
            TextStyle(
              color: Colors.grey[400],
              fontSize: 15,
            ),
        enabledBorder: enabledBorder ??
            OutlineInputBorder(
              borderSide: const BorderSide(
                color: AppColors.grey,
                width: .5,
              ),
              borderRadius: BorderRadius.circular(br ?? 15),
            ),
        focusedBorder: focusedBorder ??
            OutlineInputBorder(
              borderSide: const BorderSide(
                color: AppColors.grey,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(br ?? 15),
            ),
        border: border ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(br ?? 15),
            ),
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
      ),
      autofocus: false,
      autocorrect: false,
      obscureText: obscureText ?? false,
      onChanged: onChanged,
      style: style ??
          const TextStyle(
            color: Colors.black,
            fontSize: 14,
          ),
      textAlign: TextAlign.left,
    );
  }
}
