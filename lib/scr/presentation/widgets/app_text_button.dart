import 'package:f_food_delivery/scr/presentation/widgets/app_text.dart';
import 'package:flutter/material.dart';

class AppTextButton extends StatelessWidget {
  const AppTextButton(this.lbl, this.onPressed, {super.key});

  final String lbl;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: AppText(
        lbl: lbl,
        style: const TextStyle(
          fontSize: 12,
          color: Colors.green,
          decoration: TextDecoration.underline,
        ),
      ),
    );
  }
}
