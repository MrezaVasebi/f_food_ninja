import 'package:f_food_delivery/scr/presentation/constant/app_colors.dart';
import 'package:f_food_delivery/scr/presentation/widgets/app_text.dart';
import 'package:flutter/material.dart';

class GradientText extends StatelessWidget {
  const GradientText(
    this.text, {
    super.key,
    this.gradient,
    this.style,
    this.onTap,
  });

  final String text;
  final TextStyle? style;
  final Gradient? gradient;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: ShaderMask(
        blendMode: BlendMode.srcIn,
        // shaderCallback: (bounds) => gradient.createShader(
        //   Rect.fromLTWH(0, 0, bounds.width, bounds.height),
        // ),
        shaderCallback: (bounds) {
          return const LinearGradient(colors: [
            AppColors.lightGreen,
            AppColors.darkGreen,
          ]).createShader(
            Rect.fromLTWH(0, 0, bounds.width, bounds.height),
          );
        },
        child: AppText(
          lbl: text,
          style: style,
        ),
      ),
    );
  }
}
