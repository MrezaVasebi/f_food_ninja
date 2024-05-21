import 'package:f_food_delivery/scr/presentation/widgets/app_text.dart';
import 'package:flutter/material.dart';

class HomeCategoryMore extends StatelessWidget {
  const HomeCategoryMore({required this.onPressed, this.catName, super.key});

  final String? catName;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        AppText(
          lbl: catName,
          style: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
        TextButton(
          onPressed: onPressed,
          child: const AppText(
            lbl: 'View More',
            style: TextStyle(
              fontSize: 12,
              color: Colors.amber,
            ),
          ),
        ),
      ],
    );
  }
}
