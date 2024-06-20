import 'package:f_food_delivery/scr/presentation/constant/images.dart';
import 'package:f_food_delivery/scr/presentation/widgets/app_text.dart';
import 'package:f_food_delivery/scr/presentation/widgets/header.dart';
import 'package:flutter/material.dart';

class ChatHeader extends StatelessWidget {
  const ChatHeader({this.title = 'Chat', super.key});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 260,
      padding: const EdgeInsets.only(bottom: 20),
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            PngImages.backLogo,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Header(
            title: 'Chat Details',
          ),
          Container(
            height: 81,
            margin: const EdgeInsets.only(left: 20, right: 20),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              // border: Border.all(width: 1),
              borderRadius: BorderRadius.circular(15),
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
              padding: const EdgeInsets.all(10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset(PngImages.userOne),
                      const SizedBox(width: 18),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          AppText(
                            lbl: 'Dianee Russell',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                          AppText(
                            lbl: 'Online',
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                                fontSize: 14),
                          )
                        ],
                      )
                    ],
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/callRinging');
                    },
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 224, 241, 202),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Icon(
                        Icons.call,
                        color: Colors.green,
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
