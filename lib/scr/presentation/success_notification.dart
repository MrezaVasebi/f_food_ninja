import 'package:f_food_delivery/scr/presentation/constant/images.dart';
import 'package:f_food_delivery/scr/presentation/widgets/app_button.dart';
import 'package:f_food_delivery/scr/presentation/widgets/app_text.dart';
import 'package:flutter/material.dart';

class SuccessNotification extends StatelessWidget {
  const SuccessNotification({this.msg, this.lblBtn, super.key});

  final String? msg;
  final String? lblBtn;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 1,
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    // color: Colors.amber,`
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(PngImages.backLogo),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Image.asset(PngImages.success),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 33,
                    ),
                    const AppText(
                      lbl: 'Congrats!',
                      style: TextStyle(
                        fontSize: 30,
                        color: Color.fromARGB(255, 77, 226, 154),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 33,
                    ),
                    AppText(
                      lbl: msg,
                      style: const TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 60),
          child: AppButton(lbl: lblBtn, onPressed: () {}),
        )
      ],
    );
  }
}


/*
Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    PngImages.success,
                  ),
                  const SizedBox(
                    height: 33,
                  ),
                  const AppText(
                    lbl: 'Congrats!',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.greenAccent,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 33,
                  ),
                  const AppText(
                    lbl: 'Password reset successful',
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
*/