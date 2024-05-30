import 'package:f_food_delivery/scr/presentation/chat_list.dart';
import 'package:f_food_delivery/scr/presentation/constant/dummy_data.dart';
import 'package:f_food_delivery/scr/presentation/constant/images.dart';
import 'package:f_food_delivery/scr/presentation/widgets/app_text.dart';
import 'package:f_food_delivery/scr/presentation/widgets/square_button.dart';
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
          Container(
            height: 150,
            // color: Colors.blue,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  PngImages.backLogo,
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                top: 38,
                left: 25,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SquareButton(
                    onTap: () {},
                    child: const Icon(
                      Icons.chevron_left_rounded,
                      color: Colors.deepOrange,
                      size: 30,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const AppText(
                    lbl: 'Chat',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  )
                ],
              ),
            ),
          ),
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
