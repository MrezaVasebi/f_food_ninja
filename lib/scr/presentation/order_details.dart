import 'package:f_food_delivery/scr/presentation/carts/order_details_cart.dart';
import 'package:f_food_delivery/scr/presentation/constant/dummy_data.dart';
import 'package:f_food_delivery/scr/presentation/list/order_list.dart';
import 'package:f_food_delivery/scr/presentation/root_scaffold_widget.dart';
import 'package:f_food_delivery/scr/presentation/widgets/header.dart';
import 'package:flutter/material.dart';

class OrderDetails extends StatelessWidget {
  const OrderDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> details = [
      {'name': 'Sub-total', 'price': '120 \$'},
      {'name': 'Delivery charge', 'price': '10 \$'},
      {'name': 'Discount', 'price': '20 \$'},
    ];

    return RootScaffoldWidget(
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: Column(
          children: [
            const Header(
              title: 'Order details',
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: OrderList(
                  list: orderList,
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
                onPressed: () {
                  Navigator.pushNamed(context, '/orderConfirm');
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
