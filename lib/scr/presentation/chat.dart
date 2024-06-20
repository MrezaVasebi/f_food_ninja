import 'package:f_food_delivery/scr/presentation/constant/dummy_data.dart';
import 'package:f_food_delivery/scr/presentation/list/chat_list.dart';
import 'package:f_food_delivery/scr/presentation/widgets/header.dart';
import 'package:flutter/material.dart';

class Chat extends StatelessWidget {
  const Chat({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: MediaQuery.of(context).size.height,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Header(
            title: 'Chats',
          ),
          const SizedBox(height: 20),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: ChatList(list: chatUser),
            ),
          )
        ],
      ),
    );
  }
}
