import 'package:f_food_delivery/scr/presentation/carts/chat_cart.dart';
import 'package:flutter/material.dart';

class ChatList extends StatelessWidget {
  const ChatList({required this.list, super.key});

  final List<dynamic> list;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      separatorBuilder: (context, index) => const SizedBox(
        height: 10,
      ),
      itemCount: list.length,
      itemBuilder: (context, index) {
        final item = list[index];
        return ChatCart(item: item);
      },
    );
  }
}
