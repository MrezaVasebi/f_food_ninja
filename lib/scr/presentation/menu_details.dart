import 'package:f_food_delivery/scr/presentation/constant/dummy_data.dart';
import 'package:f_food_delivery/scr/presentation/constant/images.dart';
import 'package:f_food_delivery/scr/presentation/list/testimonials_list.dart';
import 'package:f_food_delivery/scr/presentation/widgets/app_text.dart';
import 'package:flutter/material.dart';

class MenuDetails extends StatelessWidget {
  const MenuDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final List material = ['Strawberry', 'Cream', 'Wheat'];

    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: double.infinity,
      child: Stack(
        children: [
          Image.asset(
            height: 350,
            fit: BoxFit.cover,
            PngImages.menuDetails,
            width: double.infinity,
          ),
          Positioned(
            top: 325,
            left: 0,
            right: 0,
            bottom: 0,
            child: Expanded(
              flex: 1,
              child: Container(
                height: MediaQuery.of(context).size.height,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          // mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              height: 34,
                              width: 111,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(18.5),
                                color: const Color.fromARGB(255, 227, 246, 237),
                              ),
                              child: const Center(
                                child: AppText(
                                  lbl: 'Popular',
                                  style: TextStyle(
                                    color: Colors.green,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                Container(
                                  height: 34,
                                  width: 34,
                                  decoration: BoxDecoration(
                                      color: const Color.fromARGB(
                                          255, 227, 246, 237),
                                      borderRadius:
                                          BorderRadius.circular(18.5)),
                                  child: Image.asset(PngImages.pinLocation),
                                ),
                                const SizedBox(width: 10),
                                Container(
                                  height: 34,
                                  width: 34,
                                  decoration: BoxDecoration(
                                      color: Colors.red[100],
                                      borderRadius:
                                          BorderRadius.circular(18.5)),
                                  child: Image.asset(PngImages.heart),
                                )
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        const Padding(
                          padding: EdgeInsets.only(right: 20),
                          child: AppText(
                            lbl: 'Rainbow Sandwich Sugarless',
                            style: TextStyle(
                              fontSize: 27,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset(PngImages.star),
                            const SizedBox(width: 10),
                            AppText(
                              lbl: '4,8 Rating',
                              style: TextStyle(color: Colors.blueGrey[200]),
                            ),
                            const SizedBox(width: 20),
                            Image.asset(PngImages.shoppingBag),
                            const SizedBox(width: 10),
                            AppText(
                              lbl: '2000+ Order',
                              style: TextStyle(color: Colors.blueGrey[200]),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        const AppText(
                          lbl:
                              'Most whole Alaskan Red King Crabs get broken down into legs, claws, and lump meat. We offer all of these options as well in our online shop, but there is nothing like getting the whole',
                          maxLines: 3,
                          style: TextStyle(
                            overflow: TextOverflow.ellipsis,
                            fontSize: 12,
                          ),
                        ),
                        const SizedBox(height: 20),
                        ListView.separated(
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              final item = material[index];
                              return Row(
                                children: [
                                  Container(
                                    width: 4,
                                    height: 4,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(2),
                                        color: Colors.black),
                                  ),
                                  const SizedBox(width: 10),
                                  AppText(lbl: item)
                                ],
                              );
                            },
                            separatorBuilder: (context, index) {
                              return const SizedBox(height: 10);
                            },
                            itemCount: material.length),
                        const SizedBox(height: 20),
                        const AppText(
                          lbl:
                              'Most whole Alaskan Red King Crabs get broken down into legs, claws, and lump meat. We offer all of these options as well in our online shop, but there is nothing like getting the whole',
                          maxLines: 3,
                          style: TextStyle(
                            overflow: TextOverflow.ellipsis,
                            fontSize: 12,
                          ),
                        ),
                        const SizedBox(height: 20),
                        const AppText(
                          lbl: 'Testimonials',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 20),
                        MediaQuery.removePadding(
                          context: context,
                          removeTop: true,
                          child: TestimonialsList(
                            list: testimonialsList,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
