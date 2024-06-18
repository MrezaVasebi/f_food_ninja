import 'package:f_food_delivery/scr/presentation/carts/payment_cart.dart';
import 'package:f_food_delivery/scr/presentation/constant/images.dart';
import 'package:f_food_delivery/scr/presentation/sign_in_up_root_widget.dart';
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

    return SignInUpRootWidget(
      onPressedBtn: () {
        Navigator.pushNamed(context, '/uploadYourPhoto');
      },
      onTapBack: () {
        Navigator.pop(context);
      },
      title: 'Payment Method',
      desc: 'This data will be displayed in your account profile for security',
      bodyChild: ListView.separated(
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
    );
  }
}
