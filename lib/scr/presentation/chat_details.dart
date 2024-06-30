import 'package:f_food_delivery/scr/presentation/constant/app_colors.dart';
import 'package:f_food_delivery/scr/presentation/constant/dummy_data.dart';
import 'package:f_food_delivery/scr/presentation/root_scaffold_widget.dart';
import 'package:f_food_delivery/scr/presentation/widgets/app_input.dart';
import 'package:f_food_delivery/scr/presentation/widgets/app_text.dart';
import 'package:f_food_delivery/scr/presentation/widgets/chat_header.dart';
import 'package:flutter/material.dart';

class ChatDetails extends StatelessWidget {
  const ChatDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return RootScaffoldWidget(
      child: SizedBox(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const ChatHeader(),
            Expanded(
              flex: 1,
              child: SizedBox(
                width: double.infinity,
                height: MediaQuery.of(context).size.height,
                child: Column(
                  children: [
                    Expanded(
                      flex: 1,
                      child: SizedBox(
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 8,
                          ),
                          child: ListView.separated(
                            shrinkWrap: true,
                            separatorBuilder: (context, index) =>
                                const SizedBox(height: 20),
                            itemCount: messages.length,
                            itemBuilder: (context, index) {
                              final item = messages[index];

                              return Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: Container(
                                  width: double.infinity,
                                  alignment: item['who'] == 'sender'
                                      ? Alignment.centerLeft
                                      : Alignment.centerRight,
                                  child: Container(
                                    padding: const EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      gradient: item['who'] != 'sender'
                                          ? const LinearGradient(
                                              colors: [
                                                AppColors.lightGreen,
                                                AppColors.darkGreen,
                                              ],
                                            )
                                          : const LinearGradient(colors: [
                                              Color(0xFFF6F6F6),
                                              Color(0xFFF6F6F6),
                                            ]),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: AppText(
                                      lbl: item['msg'],
                                      style: TextStyle(
                                        color: item['who'] == 'sender'
                                            ? Colors.black
                                            : Colors.white,
                                      ),
                                    ),
                                  ),
                                  // child: Chip(
                                  //   backgroundColor: item['who'] == 'sender'
                                  //       ? const Color.fromARGB(
                                  //           255, 236, 234, 234)
                                  //       : Colors.greenAccent,
                                  //   shape: RoundedRectangleBorder(
                                  //     borderRadius: BorderRadius.circular(15),
                                  //   ),
                                  //   side: BorderSide.none,
                                  //   label: AppText(
                                  //     lbl: item['msg'],
                                  //     style: TextStyle(
                                  //       fontSize: 14,
                                  //       color: item['who'] == 'sender'
                                  //           ? Colors.black
                                  //           : Colors.white,
                                  //     ),
                                  //   ),
                                  // ),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 10, bottom: 10, right: 20, left: 20),
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: AppInput(
                            onChanged: (value) {},
                            hintText: 'Write msg...',
                            suffixIcon: Icon(
                              Icons.send,
                              color: Colors.green[400],
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
