import 'package:f_food_delivery/scr/presentation/constant/images.dart';
import 'package:f_food_delivery/scr/presentation/root_scaffold_widget.dart';
import 'package:f_food_delivery/scr/presentation/widgets/app_button.dart';
import 'package:f_food_delivery/scr/presentation/widgets/app_text.dart';
import 'package:flutter/material.dart';

class SuccessNotification extends StatelessWidget {
  const SuccessNotification({required this.msg, super.key});

  final String? msg;

  @override
  Widget build(BuildContext context) {
    return RootScaffoldWidget(
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: Column(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    // color: Colors.amber,`
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(PngImages.backLogo),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Image.asset(PngImages.success)),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      const SizedBox(height: 33),
                      const AppText(
                        lbl: 'Congrats!',
                        style: TextStyle(
                          fontSize: 30,
                          color: Color.fromARGB(255, 77, 226, 154),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 12),
                      AppText(
                        lbl: msg,
                        style: const TextStyle(
                          fontSize: 23,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 60),
            child: AppButton(
                lbl: 'Next',
                onPressed: () {
                  Navigator.pushNamed(context, '/bottomNavigation');
                }),
          )
        ],
      ),
    );
  }
}
