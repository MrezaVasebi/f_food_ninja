import 'package:f_food_delivery/scr/presentation/widgets/app_text.dart';
import 'package:flutter/material.dart';

class PhotoCart extends StatelessWidget {
  const PhotoCart({required this.item, super.key});

  final dynamic item;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: Container(
        height: 150,
        // color: Colors.yellow,
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
              color: Color.fromARGB(255, 229, 225, 225),
              blurRadius: 1.0, // soften the shadow
              spreadRadius: 1, //extend the shadow
              offset: Offset(
                2.0, // Move to right 20  horizontally
                2.0, // Move to bottom 10 Vertically
              ),
            )
          ],
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              item['img'],
              width: 35,
              height: 35,
            ),
            const SizedBox(
              height: 10,
            ),
            AppText(
              lbl: item['lbl'],
              style: const TextStyle(
                fontSize: 14,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}
