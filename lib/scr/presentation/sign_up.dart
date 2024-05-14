import 'package:f_food_delivery/scr/presentation/constant/images.dart';
import 'package:f_food_delivery/scr/presentation/sign_in_up_header.dart';
import 'package:f_food_delivery/scr/presentation/widgets/app_button.dart';
import 'package:f_food_delivery/scr/presentation/widgets/app_icon_button.dart';
import 'package:f_food_delivery/scr/presentation/widgets/app_input.dart';
import 'package:f_food_delivery/scr/presentation/widgets/app_text.dart';
import 'package:f_food_delivery/scr/presentation/widgets/app_text_button.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SignInUpHeader(),
        Expanded(
          flex: 1,
          child: SizedBox(
            width: double.infinity,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  const AppText(
                    lbl: 'Login To Your Account',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        AppInput(
                          hintText: 'Email',
                          onChanged: (value) {},
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        AppInput(
                          hintText: 'Password',
                          onChanged: (value) {},
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const AppText(
                          lbl: 'Or Continue With',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            AppIconButton(
                              lbl: 'Facebook',
                              icon: Icon(
                                Icons.facebook,
                                size: 25,
                                color: Colors.blue[600],
                              ),
                              onPressed: () {},
                            ),
                            AppIconButton(
                              lbl: 'Facebook',
                              icon: Image.asset(
                                PngImages.google,
                                height: 20,
                                width: 20,
                              ),
                              onPressed: () {},
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        AppTextButton(
                          'Forgot Your Password?',
                          () {},
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        AppButton(
                          lbl: 'Login',
                          onPressed: () {},
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
