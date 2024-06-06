import 'package:f_food_delivery/scr/presentation/constant/dummy_data.dart';
import 'package:f_food_delivery/scr/presentation/constant/images.dart';
import 'package:f_food_delivery/scr/presentation/profile_favorites_list.dart';
import 'package:f_food_delivery/scr/presentation/widgets/app_text.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: MediaQuery.of(context).size.height,
      child: Stack(
        children: [
          Image.asset(
            height: 350,
            fit: BoxFit.cover,
            PngImages.profile,
            width: double.infinity,
          ),
          Positioned(
            left: 0,
            right: 0,
            top: 325,
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
                        Container(
                          height: 34,
                          width: 111,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18.5),
                            color: Colors.red[50],
                          ),
                          child: const Center(
                            child: AppText(
                              lbl: 'Member Gold',
                              style: TextStyle(
                                color: Colors.deepOrange,
                                // color: Colors.deepOrange,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const AppText(
                                  lbl: 'Mreza Vasebi',
                                  style: TextStyle(
                                      fontSize: 27,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(height: 4),
                                AppText(
                                  lbl: 'mreza.vaseb@yahoo.con',
                                  style: TextStyle(color: Colors.blueGrey[200]),
                                )
                              ],
                            ),
                            InkWell(
                              onTap: () {},
                              child: Image.asset(PngImages.edit),
                            )
                          ],
                        ),
                        const SizedBox(height: 20),
                        Container(
                          height: 64,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(22),
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
                          child: InkWell(
                            onTap: () {},
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 20),
                              child: Row(
                                children: [
                                  Image.asset(PngImages.voucher),
                                  const SizedBox(width: 18),
                                  const AppText(
                                    lbl: 'You Have 3 Voucher',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                      color: Colors.black,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        const AppText(
                          lbl: 'Favorite',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 20),
                        MediaQuery.removePadding(
                          context: context,
                          removeTop: true,
                          child: ProfileFavoritesList(
                            list: profileFavoritesList,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
