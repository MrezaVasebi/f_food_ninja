import 'package:f_food_delivery/scr/presentation/widgets/app_text.dart';
import 'package:flutter/material.dart';

class ResDetailPopularCar extends StatelessWidget {
  const ResDetailPopularCar({required this.item, super.key});

  final dynamic item;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 147,
      height: 171,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(22),
        border: Border.all(
          color: Colors.grey,
          width: .3,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(item['img']),
          const SizedBox(height: 16),
          AppText(
            lbl: item['name'],
            style: const TextStyle(fontSize: 15),
          ),
          const SizedBox(height: 8),
          AppText(
            lbl: item['price'],
            style: TextStyle(
              fontSize: 13,
              color: Colors.blueGrey[200],
            ),
          )
        ],
      ),
    );
  }
}
