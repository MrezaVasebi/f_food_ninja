import 'package:f_food_delivery/scr/presentation/constant/app_colors.dart';
import 'package:f_food_delivery/scr/presentation/widgets/app_text.dart';
import 'package:flutter/material.dart';

class AppRadioButton extends StatelessWidget {
  const AppRadioButton(
      {required this.lbl,
      required this.onTap,
      required this.isSelected,
      this.style,
      super.key});

  final String? lbl;
  final bool isSelected;
  final TextStyle? style;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        children: [
          Container(
            width: 25,
            height: 25,
            margin: const EdgeInsets.only(right: 15),
            decoration: BoxDecoration(
              gradient: const LinearGradient(colors: [
                AppColors.lightGreen,
                AppColors.darkGreen,
              ]),
              // border: Border.all(
              //   color: Colors.grey,
              //   width: isSelected ? .5 : 0,
              // ),
              borderRadius: BorderRadius.circular(
                12.5,
              ),
            ),
            child: isSelected
                ? const Center(
                    child: Icon(
                      Icons.check,
                      size: 19,
                      color: Colors.white,
                    ),
                  )
                : Container(),
          ),
          AppText(
            lbl: lbl,
            style: style,
          )
        ],
      ),
    );
  }
}
