import 'package:f_food_delivery/scr/presentation/carts/order_details_cart.dart';
import 'package:f_food_delivery/scr/presentation/constant/images.dart';
import 'package:f_food_delivery/scr/presentation/widgets/app_text.dart';
import 'package:f_food_delivery/scr/presentation/widgets/chat_header.dart';
import 'package:flutter/material.dart';

class OrderConfirm extends StatelessWidget {
  const OrderConfirm({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> details = [
      {'name': 'Sub-total', 'price': '120 \$'},
      {'name': 'Delivery charge', 'price': '10 \$'},
      {'name': 'Discount', 'price': '20 \$'},
    ];

    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: double.infinity,
      child: Column(
        children: [
          ChatHeader(
            title: 'Confirm Order',
            onTap: () {},
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  Container(
                    height: 115,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(22),
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
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AppText(
                                lbl: 'Deliver To',
                                style: TextStyle(
                                  color: Colors.blueGrey[200],
                                ),
                              ),
                              InkWell(
                                onTap: () {},
                                child: const AppText(
                                  lbl: 'Edit',
                                  style: TextStyle(
                                    color: Colors.green,
                                  ),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(height: 14),
                          Row(
                            children: [
                              Image.asset(PngImages.location),
                              const SizedBox(width: 14),
                              const Expanded(
                                flex: 1,
                                child: AppText(
                                  lbl:
                                      '4517 Washington Ave. Manchester, Kentucky 39495',
                                  style: TextStyle(
                                    color: Colors.black,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  maxLines: 2,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    // height: 105,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(22),
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
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AppText(
                                lbl: 'Payment Method',
                                style: TextStyle(
                                  color: Colors.blueGrey[200],
                                ),
                              ),
                              InkWell(
                                onTap: () {},
                                child: const AppText(
                                  lbl: 'Edit',
                                  style: TextStyle(
                                    color: Colors.green,
                                  ),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(height: 14),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(PngImages.paypal),
                              const SizedBox(width: 14),
                              const AppText(
                                lbl: '2121 6352 8465 ****',
                                style: TextStyle(
                                  color: Colors.black,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                maxLines: 2,
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
              bottom: 20,
            ),
            child: OrderDetailsCart(
              details: details,
              total: '150 \$',
              onPressed: () {},
            ),
          )
        ],
      ),
    );
  }
}
