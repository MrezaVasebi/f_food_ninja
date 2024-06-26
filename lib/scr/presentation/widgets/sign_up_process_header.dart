import 'package:f_food_delivery/scr/presentation/constant/images.dart';
import 'package:f_food_delivery/scr/presentation/widgets/app_text.dart';
import 'package:f_food_delivery/scr/presentation/widgets/square_button.dart';
import 'package:flutter/material.dart';

class SignUpProcessHeader extends StatelessWidget {
  const SignUpProcessHeader(
      {required this.onTap,
      required this.title,
      required this.desc,
      super.key});

  final String? desc;
  final String? title;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            PngImages.backLogo,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SquareButton(
            onTap: onTap,
            child: const Center(
              child: Icon(
                size: 32,
                Icons.chevron_left,
                color: Colors.red,
              ),
            ),
          ),
          const SizedBox(height: 19),
          AppText(
            lbl: title,
            style: const TextStyle(
              fontSize: 25,
              color: Colors.black,
              fontWeight: FontWeight.bold,
              overflow: TextOverflow.ellipsis,
            ),
            maxLines: 1,
          ),
          const SizedBox(height: 19),
          AppText(
            lbl: desc,
            style: const TextStyle(
              fontSize: 12,
              color: Colors.black,
              fontWeight: FontWeight.normal,
              overflow: TextOverflow.ellipsis,
            ),
            maxLines: 1,
          )
        ],
      ),
    );
  }
}
