import 'package:f_food_delivery/scr/presentation/widgets/app_button.dart';
import 'package:f_food_delivery/scr/presentation/widgets/app_input.dart';
import 'package:f_food_delivery/scr/presentation/widgets/sign_up_process_header.dart';
import 'package:flutter/material.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

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
                  title: 'Reset your password here',
                  desc:
                      'Select which contact details should we use to reset your password'),
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    AppInput(
                      onChanged: (p0) {},
                      hintText: 'New Password',
                      suffixIcon: const Icon(
                        Icons.visibility,
                        color: Colors.greenAccent,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    AppInput(
                      onChanged: (p0) {},
                      hintText: 'Confirm Password',
                      suffixIcon: Icon(
                        Icons.visibility,
                        color: Colors.grey[400],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 60),
          child: AppButton(
            lbl: 'Next',
            onPressed: () {},
          ),
        )
      ],
    );
  }
}
