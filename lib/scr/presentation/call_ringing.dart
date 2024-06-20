import 'package:f_food_delivery/scr/presentation/constant/images.dart';
import 'package:f_food_delivery/scr/presentation/root_scaffold_widget.dart';
import 'package:f_food_delivery/scr/presentation/widgets/app_text.dart';
import 'package:f_food_delivery/scr/presentation/widgets/ring_button.dart';
import 'package:flutter/material.dart';

class CallRinging extends StatelessWidget {
  const CallRinging({super.key});

  @override
  Widget build(BuildContext context) {
    return RootScaffoldWidget(
      child: SizedBox(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        child: Expanded(
          flex: 1,
          child: Column(
            children: [
              SizedBox(
                height: 350,
                width: double.infinity,
                child: Stack(
                  children: [
                    Positioned(
                      child: Container(
                        height: 275,
                        width: double.infinity,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                PngImages.backLogo,
                              ),
                              fit: BoxFit.cover),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        width: 150,
                        height: 150,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(PngImages.userFour),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 59),
              Expanded(
                flex: 1,
                child: SizedBox(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 65),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            const AppText(
                              lbl: 'Courtney Henry',
                              style: TextStyle(
                                fontSize: 25,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 20),
                            AppText(
                              lbl: 'Ringing...',
                              style: TextStyle(
                                fontSize: 19,
                                color: Colors.blueGrey[100],
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 100,
                          width: double.infinity,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              RingButton(
                                bgColor: Colors.green[100],
                                child: const Icon(
                                  size: 35,
                                  Icons.volume_up,
                                  color: Colors.green,
                                ),
                              ),
                              const SizedBox(width: 20),
                              RingButton(
                                bgColor: Colors.red,
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: const Icon(
                                  size: 35,
                                  Icons.close,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
