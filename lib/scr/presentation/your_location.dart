import 'package:f_food_delivery/scr/presentation/constant/images.dart';
import 'package:f_food_delivery/scr/presentation/sign_in_up_root_widget.dart';
import 'package:f_food_delivery/scr/presentation/widgets/app_text.dart';
import 'package:flutter/material.dart';

class YourLocation extends StatelessWidget {
  const YourLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return SignInUpRootWidget(
      desc: 'This data will be displayed in your account profile for security',
      title: 'Set Your Location',
      onPressedBtn: () {},
      onTapBack: () {},
      bodyChild: Align(
        alignment: Alignment.topCenter,
        child: Container(
          height: 147,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.red,
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
            borderRadius: BorderRadius.circular(22),
          ),
          padding: const EdgeInsets.all(11),
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset(PngImages.location),
                  const SizedBox(
                    width: 14,
                  ),
                  const AppText(
                    lbl: 'Your Location',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              const SizedBox(height: 33),
              Container(
                height: 57,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 248, 244, 244),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Center(
                  child: AppText(
                    lbl: 'Set Location',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
