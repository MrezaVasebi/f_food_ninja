import 'package:f_food_delivery/scr/presentation/constant/images.dart';
import 'package:f_food_delivery/scr/presentation/root_scaffold_widget.dart';
import 'package:f_food_delivery/scr/presentation/sign_in_up_header.dart';
import 'package:f_food_delivery/scr/presentation/widgets/app_button.dart';
import 'package:f_food_delivery/scr/presentation/widgets/app_input.dart';
import 'package:f_food_delivery/scr/presentation/widgets/app_radio_button.dart';
import 'package:f_food_delivery/scr/presentation/widgets/app_text.dart';
import 'package:f_food_delivery/scr/presentation/widgets/gradient_text.dart';
import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return RootScaffoldWidget(
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: SizedBox(
              width: double.infinity,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SignInUpHeader(),
                    const SizedBox(height: 10),
                    const AppText(
                      lbl: 'Sign Up For Free',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        children: [
                          AppInput(
                            onChanged: (value) {},
                            hintText: 'Username',
                            prefixIcon: Image.asset(PngImages.user),
                          ),
                          const SizedBox(height: 10),
                          AppInput(
                            onChanged: (value) {},
                            hintText: 'Email',
                            prefixIcon: Image.asset(PngImages.email),
                          ),
                          const SizedBox(height: 10),
                          AppInput(
                            onChanged: (value) {},
                            hintText: 'Username',
                            obscureText: true,
                            prefixIcon: Image.asset(PngImages.lock),
                            suffixIcon: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.visibility,
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          AppRadioButton(
                            onTap: () {},
                            isSelected: true,
                            lbl: 'Keep Me Signed In',
                          ),
                          const SizedBox(height: 10),
                          AppRadioButton(
                            onTap: () {},
                            isSelected: true,
                            lbl: 'Email Me About Special Pricing',
                          ),
                          const SizedBox(height: 43),
                          AppButton(
                            lbl: 'Create Account',
                            onPressed: () {
                              Navigator.pushNamed(context, '/signUpProcess');
                            },
                          ),
                          const SizedBox(height: 20),
                          GradientText(
                            'already have an account?',
                            onTap: () {
                              Navigator.pop(context);
                            },
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
      ),
    );
  }
}
