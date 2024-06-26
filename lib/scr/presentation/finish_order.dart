import 'package:f_food_delivery/scr/presentation/constant/images.dart';
import 'package:f_food_delivery/scr/presentation/root_scaffold_widget.dart';
import 'package:f_food_delivery/scr/presentation/widgets/app_button.dart';
import 'package:f_food_delivery/scr/presentation/widgets/app_input.dart';
import 'package:f_food_delivery/scr/presentation/widgets/app_text.dart';
import 'package:flutter/material.dart';

class FinishOrder extends StatelessWidget {
  const FinishOrder({super.key});

  @override
  Widget build(BuildContext context) {
    List<int> stars = [1, 2, 3, 4, 5];

    return RootScaffoldWidget(
      child: SizedBox(
        // color: Colors.red,
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            // color: Colors.yellow,
            child: Column(
              children: [
                Expanded(
                  flex: 1,
                  child: Stack(
                    children: [
                      Positioned(
                        child: Container(
                          height: double.infinity,
                          width: double.infinity,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                PngImages.backLogo,
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          width: 150,
                          height: 150,
                          margin: const EdgeInsets.only(bottom: 20),
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(PngImages.userFour),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 200,
                        width: double.infinity,
                        // color: Colors.green,
                        child: Column(
                          children: [
                            const AppText(
                              lbl: 'Thank You!',
                              style: TextStyle(
                                fontSize: 25,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const AppText(
                              lbl: 'Order Completed!',
                              style: TextStyle(
                                fontSize: 25,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 20),
                            AppText(
                              lbl: 'Please rate your last Driver',
                              style: TextStyle(
                                fontSize: 19,
                                color: Colors.blueGrey[100],
                              ),
                            ),
                            const SizedBox(height: 40),
                            Container(
                              alignment: Alignment.center,
                              height: 30,
                              width: double.infinity,
                              child: ListView.separated(
                                separatorBuilder: (context, index) =>
                                    const SizedBox(width: 20),
                                itemBuilder: (context, index) {
                                  return const Icon(Icons.star_rounded,
                                      color: Colors.yellow);
                                },
                                itemCount: stars.length,
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        // height: 200,
                        width: double.infinity,
                        // color: Colors.blue,
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                AppInput(
                                  onChanged: (value) {},
                                  hintText: 'Leave feedback',
                                  prefixIcon: const Icon(
                                    Icons.edit,
                                    color: Colors.green,
                                  ),
                                ),
                                const SizedBox(height: 20),
                                Row(
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: AppButton(
                                        lbl: 'Submit',
                                        onPressed: () {},
                                        // width: 233,
                                      ),
                                    ),
                                    const SizedBox(width: 20),
                                    InkWell(
                                      onTap: () {
                                        Navigator.pushNamed(
                                            context, '/bottomNavigation');
                                      },
                                      child: Container(
                                        height: 57,
                                        width: 82,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          boxShadow: const [
                                            BoxShadow(
                                              color: Color.fromARGB(
                                                  255, 229, 225, 225),
                                              blurRadius:
                                                  1.0, // soften the shadow
                                              spreadRadius:
                                                  1, //extend the shadow
                                              offset: Offset(
                                                2.0, // Move to right 20  horizontally
                                                2.0, // Move to bottom 10 Vertically
                                              ),
                                            ),
                                          ],
                                        ),
                                        child: const Center(
                                          child: AppText(
                                            lbl: 'Skip',
                                            style: TextStyle(
                                              color: Colors.green,
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
