import 'package:flutter/material.dart';

class SquareButton extends StatelessWidget {
  const SquareButton({required this.child, required this.onTap, super.key});

  final Widget? child;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 45,
        height: 45,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 248, 242, 243),
          borderRadius: BorderRadius.circular(15),
        ),
        child: child,
      ),
    );
  }
}
