import 'package:f_food_delivery/scr/presentation/constant/images.dart';
import 'package:f_food_delivery/scr/presentation/root_scaffold_widget.dart';
import 'package:f_food_delivery/scr/presentation/sign_in_up_header.dart';
import 'package:f_food_delivery/scr/presentation/widgets/app_button.dart';
import 'package:f_food_delivery/scr/presentation/widgets/app_icon_button.dart';
import 'package:f_food_delivery/scr/presentation/widgets/app_input.dart';
import 'package:f_food_delivery/scr/presentation/widgets/app_text.dart';
import 'package:f_food_delivery/scr/presentation/widgets/gradient_text.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

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
                    const SizedBox(
                      height: 10,
                    ),
                    const AppText(
                      lbl: 'Login To Your Account',
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
                            hintText: 'Email',
                            onChanged: (value) {},
                          ),
                          const SizedBox(height: 10),
                          AppInput(
                            hintText: 'Password',
                            onChanged: (value) {},
                          ),
                          const SizedBox(height: 20),
                          const AppText(
                            lbl: 'Or Continue With',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 20),
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
                          const SizedBox(height: 20),
                          GradientText(
                            'Forgot Your Password?',
                            style: const TextStyle(fontSize: 12),
                            onTap: () {
                              Navigator.pushNamed(context, '/verificationCode');
                            },
                          ),
                          const SizedBox(height: 20),
                          AppButton(
                            lbl: 'Login',
                            onPressed: () {
                              Navigator.pushNamed(context, '/bottomNavigation');
                            },
                          ),
                          const SizedBox(height: 20),
                          GradientText(
                            'create an Account?',
                            onTap: () {
                              Navigator.pushNamed(context, '/signIn');
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
