import 'package:f_food_delivery/scr/presentation/widgets/app_button.dart';
import 'package:f_food_delivery/scr/presentation/widgets/sign_up_process_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class VerificationCode extends StatelessWidget {
  const VerificationCode({super.key});

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
              // color: Colors.pink,
              // padding: const EdgeInsets.only(bottom: 38),
              // height: MediaQuery.of(context).size.height * 0.2,
              child: SignUpProcessHeader(
                onTap: () {},
                title: 'Enter 4-digit Verification code',
                desc:
                    'Code send to +6282045**** . This code will expired in 01:30',
              ),
            ),
            Expanded(
              flex: 1,
              child: SizedBox(
                // color: Colors.yellow,
                height: MediaQuery.of(context).size.height,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        // color: Colors.red,
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height * 0.6,
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: SizedBox(
                            child: TextField(
                              keyboardType: TextInputType.number,
                              cursorColor: Colors.black,
                              decoration: const InputDecoration(
                                hintText: 'Verification code',
                                hintStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                ),
                                contentPadding: EdgeInsets.all(8),
                                fillColor: Colors.white,
                                filled: true,
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.blueGrey,
                                    width: .3,
                                  ),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(22),
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.blueGrey,
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
                                color: Colors.black,
                              ),
                              textAlign: TextAlign.center,
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(
                                    4), // text length
                                FilteringTextInputFormatter
                                    .digitsOnly // only number
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        // color: Colors.orange,
                        // padding: const EdgeInsets.only(bottom: 60),
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height * 0.2,
                        child: Align(
                          alignment: Alignment.center,
                          child: AppButton(
                            lbl: 'Next',
                            onPressed: () {},
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
