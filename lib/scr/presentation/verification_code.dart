import 'package:f_food_delivery/scr/presentation/constant/app_colors.dart';
import 'package:f_food_delivery/scr/presentation/sign_in_up_root_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class VerificationCode extends StatelessWidget {
  const VerificationCode({super.key});

  @override
  Widget build(BuildContext context) {
    return SignInUpRootWidget(
      desc: 'Code send to +6282045**** . This code will expired in 01:30',
      title: 'Enter 4-digit Verification code',
      onPressedBtn: () {
        Navigator.pushNamed(context, '/resetPassword');
      },
      onTapBack: () {
        Navigator.pop(context);
      },
      bodyChild: TextField(
        keyboardType: TextInputType.number,
        cursorColor: AppColors.black,
        decoration: const InputDecoration(
          hintText: 'Verification code',
          hintStyle: TextStyle(
            fontSize: 15,
            color: Colors.black,
          ),
          contentPadding: EdgeInsets.all(8),
          fillColor: AppColors.white,
          filled: true,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.blueGrey,
              width: .3,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(22),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.blueGrey,
              width: .3,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(22),
            ),
          ),
        ),
        style: const TextStyle(
          fontSize: 25,
          height: 3,
          color: AppColors.black,
        ),
        textAlign: TextAlign.center,
        inputFormatters: [
          LengthLimitingTextInputFormatter(4), // text length
          FilteringTextInputFormatter.digitsOnly // only number
        ],
      ),
    );
  }
}
