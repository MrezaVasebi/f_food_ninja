import 'package:f_food_delivery/scr/presentation/widgets/app_text.dart';
import 'package:flutter/material.dart';

class RestaurantCart extends StatelessWidget {
  const RestaurantCart({required this.item, super.key});

  final dynamic item;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 147,
      height: 184,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: Colors.grey,
          width: .3,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(item['img']),
          const SizedBox(height: 17),
          AppText(
            lbl: item['name'],
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 5),
          AppText(
            lbl: item['time'],
            style: const TextStyle(
              color: Colors.grey,
              fontSize: 13,
            ),
          )
        ],
      ),
    );
  }
}
