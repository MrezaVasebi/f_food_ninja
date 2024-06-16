import 'package:f_food_delivery/scr/presentation/constant/images.dart';
import 'package:f_food_delivery/scr/presentation/sign_in_up_root_widget.dart';
import 'package:f_food_delivery/scr/presentation/widgets/app_text.dart';
import 'package:flutter/material.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    final List methods = [
      {
        'icon': PngImages.message,
        'placeholder': '**** *** 4235',
        'lbl': 'Via sms:'
      },
      {
        'icon': PngImages.emailOne,
        'placeholder': '**** @gmail.com',
        'lbl': 'Via email:'
      }
    ];

    return SignInUpRootWidget(
      desc: 'Select which contact details should we use to reset your password',
      title: 'Forgot password?',
      onPressedBtn: () {},
      onTapBack: () {},
      bodyChild: ListView.separated(
        itemCount: methods.length,
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return const SizedBox(
            height: 20,
          );
        },
        itemBuilder: (context, index) {
          final item = methods[index];

          return InkWell(
            onTap: () {},
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
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
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                children: [
                  Image.asset(
                    width: 40,
                    height: 40,
                    item['icon'],
                    fit: BoxFit.contain,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppText(
                        lbl: item['lbl'],
                        style: const TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      AppText(
                        lbl: item['placeholder'],
                      ),
                    ],
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
