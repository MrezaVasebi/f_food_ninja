import 'package:f_food_delivery/scr/presentation/widgets/app_text.dart';
import 'package:flutter/material.dart';

class TestimonialsCart extends StatelessWidget {
  const TestimonialsCart({required this.item, super.key});

  final dynamic item;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      // height: 128,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(22),
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
        padding: const EdgeInsets.all(11),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(item['img']),
            const SizedBox(width: 21),
            Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppText(
                    lbl: item['name'],
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 3),
                  AppText(
                    lbl: item['date'],
                    style: TextStyle(
                      color: Colors.blueGrey[200],
                    ),
                  ),
                  const SizedBox(height: 20),
                  AppText(
                    maxLines: 2,
                    lbl: item['msg'],
                    style: const TextStyle(
                      fontSize: 12,
                      overflow: TextOverflow.ellipsis,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 53,
              height: 33,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 227, 246, 237),
                borderRadius: BorderRadius.circular(18.5),
              ),
              child: const Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.greenAccent,
                  ),
                  AppText(
                    lbl: '5',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.greenAccent,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
