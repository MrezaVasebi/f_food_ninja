import 'package:f_food_delivery/scr/presentation/sign_in_up_root_widget.dart';
import 'package:f_food_delivery/scr/presentation/success_notification.dart';
import 'package:f_food_delivery/scr/presentation/widgets/app_input.dart';
import 'package:flutter/material.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return SignInUpRootWidget(
      desc: 'Select which contact details should we use to reset your password',
      title: 'Reset your password here',
      onPressedBtn: () {
        Navigator.push(context, MaterialPageRoute(
          builder: (context) {
            return const SuccessNotification(
              msg: 'Password reset successful',
            );
          },
        ));
      },
      onTapBack: () {
        Navigator.pop(context);
      },
      bodyChild: Column(
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
    );
  }
}
