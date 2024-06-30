import 'package:f_food_delivery/scr/presentation/constant/app_colors.dart';
import 'package:f_food_delivery/scr/presentation/widgets/app_text.dart';
import 'package:flutter/material.dart';

class AppIconButton extends StatelessWidget {
  const AppIconButton(
      {this.icon,
      required this.lbl,
      required this.onPressed,
      this.minimumSize,
      this.backgroundColor,
      super.key});

  final String lbl;
  final Widget? icon;
  final Size? minimumSize;
  final Function()? onPressed;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
        minimumSize: minimumSize ??
            const Size(
              152,
              57,
            ),
        backgroundColor: backgroundColor ?? AppColors.white,
        side: const BorderSide(
          width: .5,
          color: AppColors.grey,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            15,
          ),
        ),
      ),
      onPressed: onPressed,
      icon: icon,
      label: AppText(
        lbl: lbl,
        style: const TextStyle(
          fontSize: 14,
          color: AppColors.black,
        ),
      ),
    );
  }
}
