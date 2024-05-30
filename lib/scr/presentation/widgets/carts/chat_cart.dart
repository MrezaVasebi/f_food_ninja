import 'package:f_food_delivery/scr/presentation/widgets/app_text.dart';
import 'package:flutter/material.dart';

class ChatCart extends StatelessWidget {
  const ChatCart({this.item, super.key});

  final dynamic item;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 81,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        // border: Border.all(width: 1),
        borderRadius: BorderRadius.circular(15),
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
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              child: Row(
                children: [
                  Image.asset(item['img']),
                  const SizedBox(width: 17),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      AppText(
                        lbl: item['name'],
                        style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                      const SizedBox(height: 8),
                      AppText(
                        lbl: item['msg'],
                        style: const TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w500,
                            fontSize: 14),
                      )
                    ],
                  ),
                ],
              ),
            ),
            AppText(
              lbl: item['time'],
              style: const TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w500,
                  fontSize: 14),
            )
          ],
        ),
      ),
    );
  }
}
