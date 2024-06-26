import 'package:flutter/material.dart';

class PaymentCart extends StatelessWidget {
  const PaymentCart({required this.item, super.key});

  final dynamic item;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        height: 73,
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
              color: Color.fromARGB(255, 229, 225, 225),
              blurRadius: 1.0, // soften the shadow
              spreadRadius: 1, //extend the shadow
              offset: Offset(
                2.0, // Move to right 20  horizontally
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
  }
}
