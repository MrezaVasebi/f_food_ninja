import 'package:f_food_delivery/scr/presentation/widgets/app_text.dart';
import 'package:flutter/material.dart';

class CustomTab extends StatelessWidget {
  const CustomTab(
      {required this.selectedIndex,
      this.onPressed,
      this.tabIndex,
      required this.selectedIcon,
      required this.unSelectedIcon,
      this.label,
      super.key});

  final int? tabIndex;
  final String? label;
  final int selectedIndex;
  final Icon selectedIcon;
  final Icon unSelectedIcon;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: onPressed,
      label: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 6,
          horizontal: 8,
        ),
        decoration: BoxDecoration(
          color: selectedIndex == tabIndex
              ? const Color.fromARGB(255, 221, 236, 222)
              : Colors.transparent,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            selectedIndex == tabIndex ? selectedIcon : unSelectedIcon,
            const SizedBox(width: 12),
            AppText(
              lbl: selectedIndex == tabIndex ? label : '',
              style: const TextStyle(
                fontSize: 12,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
