import 'package:f_food_delivery/scr/presentation/constant/app_colors.dart';
import 'package:f_food_delivery/scr/presentation/widgets/app_text.dart';
import 'package:flutter/material.dart';

class ProfileFavoriteCart extends StatelessWidget {
  const ProfileFavoriteCart({required this.item, super.key});

  final dynamic item;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            color: Color.fromARGB(255, 229, 225, 225),
            blurRadius: 1.0, // soften the shadow
            spreadRadius: 1, //extend the shadow
            offset: Offset(
              2.0, // Move to right 20  horizontally
              2.0, // Move to bottom 10 Vertically
            ),
          ),
        ],
        // border: Border.all(width: .5),
        borderRadius: BorderRadius.circular(22),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          children: [
            Image.asset(item['img']),
            Expanded(
              flex: 1,
              child: Container(
                margin: const EdgeInsets.only(left: 15, right: 15),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppText(
                      lbl: item['name'],
                      style: const TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        overflow: TextOverflow.ellipsis,
                      ),
                      maxLines: 1,
                    ),
                    const SizedBox(height: 4),
                    AppText(
                      lbl: item['desc'],
                      style: TextStyle(
                        color: Colors.blueGrey[200],
                        fontSize: 14,
                        overflow: TextOverflow.ellipsis,
                      ),
                      maxLines: 1,
                    ),
                    const SizedBox(height: 8),
                    AppText(
                      lbl: item['price'],
                      style: const TextStyle(
                          fontSize: 19,
                          color: Colors.green,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: 29,
              width: 85,
              decoration: BoxDecoration(
                gradient: const LinearGradient(colors: [
                  AppColors.lightGreen,
                  AppColors.darkGreen,
                ]),
                borderRadius: BorderRadius.circular(17.5),
              ),
              child: const Center(
                child: AppText(
                  lbl: 'Buy Again',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
