import 'package:f_food_delivery/scr/presentation/constant/images.dart';
import 'package:f_food_delivery/scr/presentation/widgets/app_button.dart';
import 'package:f_food_delivery/scr/presentation/widgets/app_text.dart';
import 'package:f_food_delivery/scr/presentation/widgets/sign_up_process_header.dart';
import 'package:flutter/material.dart';

class YourLocation extends StatelessWidget {
  const YourLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 1,
          child: Column(
            children: [
              SignUpProcessHeader(
                onTap: () {},
                title: 'Set Your Location',
                desc:
                    ' This data will be displayed in your account profile for security',
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 147,
                // color: Colors.red,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromARGB(255, 207, 206, 206),
                      blurRadius: 15.0, // soften the shadow
                      spreadRadius: 1.0, //extend the shadow
                      offset: Offset(
                        2.0, // Move to right 10  horizontally
                        2.0, // Move to bottom 10 Vertically
                      ),
                    )
                  ],
                  borderRadius: BorderRadius.circular(22),
                ),
                margin: const EdgeInsets.symmetric(horizontal: 20),
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
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 33,
                    ),
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
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            bottom: 60,
          ),
          child: AppButton(
            lbl: 'Next',
            onPressed: () {},
          ),
        )
      ],
    );
  }
}
