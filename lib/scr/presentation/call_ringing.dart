import 'package:f_food_delivery/scr/presentation/constant/images.dart';
import 'package:f_food_delivery/scr/presentation/widgets/app_text.dart';
import 'package:flutter/material.dart';

class CallRinging extends StatelessWidget {
  const CallRinging({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
                            Container(
                              width: 70,
                              height: 70,
                              decoration: BoxDecoration(
                                color: Colors.greenAccent,
                                borderRadius: BorderRadius.circular(35),
                              ),
                              child: const Icon(
                                size: 35,
                                Icons.volume_up,
                                color: Colors.green,
                              ),
                            ),
                            const SizedBox(width: 20),
                            Container(
                              width: 70,
                              height: 70,
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(35),
                              ),
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
        // child: Stack(
        //   children: [
        //     Container(
        //       height: 300,
        //       width: double.infinity,
        //       decoration: const BoxDecoration(
        //         color: Colors.blueAccent,
        //         image: DecorationImage(
        //             image: AssetImage(
        //               PngImages.backLogo,
        //             ),
        //             fit: BoxFit.cover),
        //       ),
        //     ),
        //     Positioned(
        //       top: 300,
        //       child: Container(
        //         height: 100,
        //         width: double.infinity,
        //         child: AppText(lbl: 'lbl'),
        //         alignment: Alignment.topCenter,
        //         color: Colors.cyanAccent,
        //       ),
        //     )
        //   ],
        // ),
        // child: Column(
        //   children: [
        //     Container(
        //       height: 300,
        //       width: double.infinity,
        //       decoration: const BoxDecoration(
        //         color: Colors.blueAccent,
        //         image: DecorationImage(
        //             image: AssetImage(
        //               PngImages.backLogo,
        //             ),
        //             fit: BoxFit.cover),
        //       ),
        //     ),
        //     Stack(
        //       // fit: StackFit.loose,
        //       children: [
        //         Positioned(
        //           // top: -25,

        //           child: Container(
        //             width: 150,
        //             height: 150,
        //             decoration: const BoxDecoration(
        //                 shape: BoxShape.circle, color: Colors.cyan
        //                 // image: DecorationImage(
        //                 //   image: AssetImage(PngImages.userFour),
        //                 //   fit: BoxFit.cover,
        //                 // ),
        //                 ),
        //           ),
        //         )
        //       ],
        //     )
        //   ],
        // ),
        // child: Stack(
        //   children: [
        //     Container(
        //       height: 300,
        //       width: double.infinity,
        //       decoration: const BoxDecoration(
        //         color: Colors.blueAccent,
        //         image: DecorationImage(
        //             image: AssetImage(
        //               PngImages.backLogo,
        //             ),
        //             fit: BoxFit.cover),
        //       ),
        //     ),
        //     Positioned(
        //       top: 25,
        //       left: 25,
        //       child: Container(
        //         width: 150,
        //         height: 150,
        //         decoration: const BoxDecoration(
        //           shape: BoxShape.circle,
        //           image: DecorationImage(
        //             image: AssetImage(PngImages.userFour),
        //             fit: BoxFit.cover,
        //           ),
        //         ),
        //       ),
        //     )
        //   ],
        // ),
        // child: Column(
        //   children: [
        // Container(
        //   height: 300,
        //   width: double.infinity,
        //   decoration: const BoxDecoration(
        //     color: Colors.blueAccent,
        //     image: DecorationImage(
        //         image: AssetImage(
        //           PngImages.backLogo,
        //         ),
        //         fit: BoxFit.cover),
        //   ),
        // ),
        // Stack(
        //   children: [
        //     Positioned(
        //       left: 25,
        //       child: Container(
        //         width: 150,
        //         height: 150,
        //         decoration: const BoxDecoration(
        //           shape: BoxShape.circle,
        //           image: DecorationImage(
        //             image: AssetImage(PngImages.userFour),
        //             fit: BoxFit.cover,
        //           ),
        //         ),
        //       ),
        //     ),
        //   ],
        // ),
        // const SizedBox(height: 59),
        // Expanded(
        //   flex: 1,
        //   child: Container(
        //     color: Colors.red,
        //     width: double.infinity,
        //     height: MediaQuery.of(context).size.height,
        //     child: Padding(
        //       padding: const EdgeInsets.only(bottom: 65),
        //       child: Column(
        //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //         children: [
        //           Column(
        //             children: [
        //               const AppText(
        //                 lbl: 'Courtney Henry',
        //                 style: TextStyle(
        //                   fontSize: 25,
        //                   color: Colors.black,
        //                   fontWeight: FontWeight.bold,
        //                 ),
        //               ),
        //               const SizedBox(height: 20),
        //               AppText(
        //                 lbl: 'Ringing...',
        //                 style: TextStyle(
        //                     fontSize: 19, color: Colors.blueGrey[50]),
        //               )
        //             ],
        //           ),
        //           Container(
        //             height: 100,
        //             color: Colors.green,
        //             width: double.infinity,
        //             child: Row(
        //               mainAxisAlignment: MainAxisAlignment.center,
        //               crossAxisAlignment: CrossAxisAlignment.center,
        //               children: [
        //                 Container(
        //                   width: 70,
        //                   height: 70,
        //                   decoration: BoxDecoration(
        //                     color: Colors.greenAccent,
        //                     borderRadius: BorderRadius.circular(35),
        //                   ),
        //                   child: const Icon(
        //                     size: 35,
        //                     Icons.volume_up,
        //                     color: Colors.green,
        //                   ),
        //                 ),
        //                 const SizedBox(width: 20),
        //                 Container(
        //                   width: 70,
        //                   height: 70,
        //                   decoration: BoxDecoration(
        //                     color: Colors.red,
        //                     borderRadius: BorderRadius.circular(35),
        //                   ),
        //                   child: const Icon(
        //                     size: 35,
        //                     Icons.close,
        //                     color: Colors.white,
        //                   ),
        //                 ),
        //               ],
        //             ),
        //           )
        //         ],
        //       ),
        //     ),
        //   ),
        // ),
        // ],
      ),
    );
  }
}
