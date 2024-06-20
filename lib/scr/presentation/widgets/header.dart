import 'package:f_food_delivery/scr/presentation/constant/images.dart';
import 'package:f_food_delivery/scr/presentation/widgets/app_text.dart';
import 'package:f_food_delivery/scr/presentation/widgets/square_button.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({this.title, this.showBackBtn = true, super.key});

  final String? title;
  final bool showBackBtn;

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 80,
      width: double.infinity,
      decoration: const BoxDecoration(
        // color: Colors.red,
        image: DecorationImage(
          image: AssetImage(
            PngImages.backLogo,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 20,
          top: 20,
          bottom: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            showBackBtn
                ? SquareButton(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(
                      Icons.chevron_left_rounded,
                      color: Color.fromARGB(255, 239, 81, 33),
                      size: 30,
                    ),
                  )
                : Container(),
            const SizedBox(height: 20),
            AppText(
              lbl: title,
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
