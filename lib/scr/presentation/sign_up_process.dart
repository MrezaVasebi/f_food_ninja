import 'package:f_food_delivery/scr/presentation/sign_in_up_root_widget.dart';
import 'package:f_food_delivery/scr/presentation/widgets/app_input.dart';
import 'package:flutter/material.dart';

class SignUpProcess extends StatelessWidget {
  const SignUpProcess({super.key});

  @override
  Widget build(BuildContext context) {
    return SignInUpRootWidget(
      title: 'Fill in your bio to get started',
      desc: 'This data will be displayed in your account profile for security',
      onPressedBtn: () {
        Navigator.pushNamed(context, '/paymentMethod');
      },
      onTapBack: () {
        Navigator.pop(context);
      },
      bodyChild: Column(
        children: [
          AppInput(
            onChanged: (value) {},
            hintText: 'First Name',
          ),
          const SizedBox(height: 20),
          AppInput(
            onChanged: (value) {},
            hintText: 'Last Name',
          ),
          const SizedBox(height: 20),
          AppInput(
            onChanged: (value) {},
            hintText: 'Mobile Number',
          ),
        ],
      ),
    );
  }
}
