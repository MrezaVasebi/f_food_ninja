import 'package:f_food_delivery/scr/presentation/widgets/app_button.dart';
import 'package:f_food_delivery/scr/presentation/widgets/app_input.dart';
import 'package:f_food_delivery/scr/presentation/widgets/sign_up_process_header.dart';
import 'package:flutter/material.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: double.infinity,
      child: Expanded(
        flex: 1,
        child: Column(
          children: [
            SizedBox(
              // padding: const EdgeInsets.only(bottom: 38),
              // height: MediaQuery.of(context).size.height * 0.2,
              child: SignUpProcessHeader(
                onTap: () {},
                title: 'Reset your password here',
                desc:
                    'Select which contact details should we use to reset your password',
              ),
            ),
            // const SizedBox(height: 40),
            Expanded(
              flex: 1,
              child: SizedBox(
                // color: Colors.red,
                height: MediaQuery.of(context).size.height,
                width: double.infinity,
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        SizedBox(
                          // color: Colors.green,
                          width: double.infinity,
                          height: MediaQuery.of(context).size.height * 0.6,
                          child: Column(
                            children: [
                              AppInput(
                                br: 22,
                                onChanged: (p0) {},
                                hintText: 'New Password',
                                suffixIcon: const Icon(
                                  Icons.visibility,
                                  color: Colors.greenAccent,
                                ),
                                style: const TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              AppInput(
                                br: 22,
                                style: const TextStyle(
                                  fontSize: 20,
                                ),
                                onChanged: (p0) {},
                                hintText: 'Confirm Password',
                                suffixIcon: Icon(
                                  Icons.visibility,
                                  color: Colors.grey[400],
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          // color: Colors.yellow,
                          // width: double.infinity,
                          height: MediaQuery.of(context).size.height * 0.2,
                          child: Align(
                            alignment: Alignment.center,
                            child: AppButton(
                              lbl: "Next",
                              onPressed: () {},
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
