import 'package:f_food_delivery/scr/presentation/constant/images.dart';
import 'package:f_food_delivery/scr/presentation/widgets/app_text.dart';
import 'package:flutter/material.dart';

class NotifCart extends StatelessWidget {
  const NotifCart({required this.item, super.key});

  final dynamic item;

  @override
  Widget build(BuildContext context) {
    String getImage(String type) {
      var image = '';
      switch (type) {
        case 'success':
          image = PngImages.success;
        case 'warn':
          image = PngImages.warn;
        case 'error':
          image = PngImages.error;
        default:
      }

      return image;
    }

    return Container(
      width: double.infinity,
      height: 105,
      decoration: BoxDecoration(
        color: Colors.white,
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
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 20,
        ),
        child: Row(
          children: [
            Image.asset(
              getImage(item['type']),
              height: 57,
              width: 57,
            ),
            Expanded(
              flex: 1,
              child: Container(
                margin: const EdgeInsets.only(left: 21),
                width: double.infinity,
                height: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AppText(
                      lbl: item['msg'],
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        overflow: TextOverflow.ellipsis,
                      ),
                      maxLines: 1,
                    ),
                    const SizedBox(height: 4),
                    AppText(
                      lbl: item['time'],
                      style: TextStyle(
                        color: Colors.blueGrey[100],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
