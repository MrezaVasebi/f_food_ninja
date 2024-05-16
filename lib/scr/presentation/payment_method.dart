import 'package:f_food_delivery/scr/presentation/constant/images.dart';
import 'package:f_food_delivery/scr/presentation/widgets/app_button.dart';
import 'package:f_food_delivery/scr/presentation/widgets/sign_up_process_header.dart';
import 'package:flutter/material.dart';

class PaymentMethod extends StatelessWidget {
  const PaymentMethod({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> payments = [
      PngImages.paypal,
      PngImages.visa,
      PngImages.payoneer,
    ];

    return Column(
      children: [
        Expanded(
          flex: 1,
          child: Column(
            children: [
              SignUpProcessHeader(
                onTap: () {},
                title: 'Payment Method',
                desc:
                    'This data will be displayed in your account profile for security',
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: ListView.separated(
                  itemCount: payments.length,
                  separatorBuilder: (context, index) {
                    return const SizedBox(
                      height: 17,
                    );
                  },
                  itemBuilder: (BuildContext context, int index) {
                    final item = payments[index];
                    return InkWell(
                      onTap: () {},
                      child: Container(
                        height: 73,
                        // color: Colors.yellow,
                        decoration: BoxDecoration(
                          boxShadow: const [
                            BoxShadow(
                              color: Color.fromARGB(255, 207, 206, 206),
                              blurRadius: 15.0, // soften the shadow
                              spreadRadius: 1.0, //extend the shadow
                              offset: Offset(
                                2.0, // Move to right 10  horizontally
                                2.0, // Move to bottom 10 Vertically
                              ),
                            )
                          ],
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white,
                        ),
                        child: Image.asset(
                          item,
                          width: 35,
                          height: 35,
                        ),
                      ),
                    );
                  },
                  shrinkWrap: true,
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 60),
          child: AppButton(
            lbl: 'Next',
            onPressed: () {},
          ),
        )
      ],
    );
  }
}
