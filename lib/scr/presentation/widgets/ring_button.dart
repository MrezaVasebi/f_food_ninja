import 'package:flutter/material.dart';

class RingButton extends StatelessWidget {
  const RingButton({this.bgColor, this.child, super.key});

  final Color? bgColor;
  final Widget? child;

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
        onTap: () {},
        child: child,
      ),
    );
  }
}
