import 'package:flutter/material.dart';

class AppInput extends StatelessWidget {
  const AppInput(
      {this.hintText,
      this.obscureText,
      this.prefixIcon,
      this.suffixIcon,
      required this.onChanged,
      super.key});

  final double br = 15;
  final String? hintText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool? obscureText;
  final void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.only(
          left: 18,
        ),
        filled: true, // don't forget this line to change background color
        fillColor: Colors.white,
        hintText: hintText,
        hintStyle: TextStyle(
          color: Colors.grey[400],
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.grey,
            width: .5,
          ),
          borderRadius: BorderRadius.circular(br),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.grey,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(br),
        ),
        border: OutlineInputBorder(
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
