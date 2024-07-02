import 'package:f_food_delivery/scr/presentation/sign_in_up_root_widget.dart';
import 'package:f_food_delivery/scr/presentation/widgets/app_input.dart';
import 'package:flutter/material.dart';

class SignUpProcess extends StatelessWidget {
  const SignUpProcess({super.key});

  @override
  Widget build(BuildContext context) {
    final inputHint = ['First Name', 'Last Name', 'Mobile Number'];

    return SignInUpRootWidget(
      title: 'Fill in your bio to get started',
      desc: 'This data will be displayed in your account profile for security',
      onPressedBtn: () {
        Navigator.pushNamed(context, '/paymentMethod');
      },
      onTapBack: () {
        Navigator.pop(context);
      },
      bodyChild: ListView.separated(
        itemBuilder: (context, index) {
          final item = inputHint[index];

          return AppInput(
            onChanged: (value) {},
            hintText: item,
          );
        },
        shrinkWrap: true,
        itemCount: inputHint.length,
        separatorBuilder: (context, index) {
          return const SizedBox(height: 20);
        },
      ),
    );
  }
}
