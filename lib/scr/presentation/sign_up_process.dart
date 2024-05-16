import 'package:f_food_delivery/scr/presentation/widgets/app_button.dart';
import 'package:f_food_delivery/scr/presentation/widgets/app_input.dart';
import 'package:f_food_delivery/scr/presentation/widgets/sign_up_process_header.dart';
import 'package:flutter/material.dart';

class SignUpProcess extends StatelessWidget {
  const SignUpProcess({super.key});

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
                title: 'Fill in your bio to get started',
                desc:
                    'This data will be displayed in your account profile for security',
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    AppInput(
                      onChanged: (value) {},
                      hintText: 'First Name',
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    AppInput(
                      onChanged: (value) {},
                      hintText: 'Last Name',
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    AppInput(
                      onChanged: (value) {},
                      hintText: 'Mobile Number',
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 60),
          child: AppButton(lbl: 'Next', onPressed: () {}),
        )
      ],
    );
  }
}
