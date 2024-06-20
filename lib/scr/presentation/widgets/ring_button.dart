import 'package:flutter/material.dart';

class RingButton extends StatelessWidget {
  const RingButton({this.onTap, this.bgColor, this.child, super.key});

  final Color? bgColor;
  final Widget? child;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 70,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(35),
      ),
      child: InkWell(
        onTap: onTap,
        child: child,
      ),
    );
  }
}
