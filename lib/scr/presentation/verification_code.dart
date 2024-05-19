import 'package:f_food_delivery/scr/presentation/widgets/app_button.dart';
import 'package:f_food_delivery/scr/presentation/widgets/sign_up_process_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class VerificationCode extends StatelessWidget {
  const VerificationCode({super.key});

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
                title: 'Enter 4-digit Verification code',
                desc:
                    'Code send to +6282045**** . This code will expired in 01:30',
              ),
              const SizedBox(
                height: 38,
              ),
              const SizedBox(
                height: 38,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Material(
                  elevation: 5,
                  borderRadius: BorderRadius.circular(15),
                  shadowColor: const Color.fromARGB(
                    255,
                    207,
                    206,
                    206,
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Verification Code',
                      hintStyle: TextStyle(
                        color: Colors.grey[400],
                        fontSize: 14,
                      ),
                      fillColor: Colors.white,
                      filled: true,
                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 30,
                        horizontal: 10,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.grey,
                          width: .5,
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.grey,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 33,
                    ),
                    textAlign: TextAlign.center,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(4),
                    ],
                  ),
                ),
              )
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
