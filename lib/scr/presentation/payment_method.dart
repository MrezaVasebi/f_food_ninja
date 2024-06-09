import 'package:f_food_delivery/scr/presentation/carts/payment_cart.dart';
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
                  shrinkWrap: true,
                  itemCount: payments.length,
                  separatorBuilder: (context, index) {
                    return const SizedBox(height: 17);
                  },
                  itemBuilder: (BuildContext context, int index) {
                    final item = payments[index];
                    return PaymentCart(item: item);
                  },
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
