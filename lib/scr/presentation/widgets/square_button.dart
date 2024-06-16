import 'package:flutter/material.dart';

class SquareButton extends StatelessWidget {
  const SquareButton(
      {this.br,
      this.width,
      this.height,
      required this.child,
      required this.onTap,
      super.key});

  final double? br;
  final Widget? child;
  final double? width;
  final double? height;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: width ?? 45,
        height: height ?? 45,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 248, 242, 243),
          borderRadius: BorderRadius.circular(br ?? 15),
        ),
        child: child,
      ),
    );
  }
}
