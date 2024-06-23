import 'package:f_food_delivery/scr/presentation/widgets/app_text.dart';
import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  const AppButton(
      {required this.lbl,
      required this.onPressed,
      this.height,
      this.width,
      super.key});

  final double? width;
  final double? height;
  final String? lbl;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? 157,
      height: height ?? 57,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.greenAccent,
            Colors.green,
          ],
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              15,
            ),
          ),
        ),
        child: AppText(
          lbl: lbl,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 15,
            fontFamily: 'myFont',
          ),
        ),
      ),
    );
  }
}
