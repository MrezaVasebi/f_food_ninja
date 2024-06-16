import 'package:f_food_delivery/scr/presentation/widgets/app_button.dart';
import 'package:f_food_delivery/scr/presentation/widgets/sign_up_process_header.dart';
import 'package:flutter/material.dart';

class SignInUpRootWidget extends StatelessWidget {
  const SignInUpRootWidget(
      {this.bodyChild,
      this.desc,
      this.onPressedBtn,
      this.onTapBack,
      this.title,
      super.key});

  final String? desc;
  final String? title;
  final Widget? bodyChild;
  final Function()? onTapBack;
  final Function()? onPressedBtn;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // color: Colors.red,
      width: double.infinity,
      height: MediaQuery.of(context).size.height,
      child: SizedBox(
        child: Expanded(
          flex: 1,
          child: Column(
            children: [
              SizedBox(
                // height: MediaQuery.of(context).size.height * .2,
                width: double.infinity,
                // color: Colors.white,
                child: SignUpProcessHeader(
                  onTap: onTapBack,
                  title: title,
                  desc: desc,
                ),
              ),
              Expanded(
                flex: 1,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        width: double.infinity,
                        // color: Colors.yellow,
                        height: MediaQuery.of(context).size.height * .65,
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: bodyChild,
                        ),
                      ),
                      SizedBox(
                        width: double.infinity,
                        // color: Colors.pink,
                        height: MediaQuery.of(context).size.height * .15,
                        child: Align(
                          alignment: Alignment.center,
                          child: AppButton(
                            lbl: 'Next',
                            onPressed: onPressedBtn,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
