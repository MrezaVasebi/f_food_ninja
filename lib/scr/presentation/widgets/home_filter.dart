import 'package:f_food_delivery/scr/presentation/constant/images.dart';
import 'package:f_food_delivery/scr/presentation/widgets/app_input.dart';
import 'package:flutter/material.dart';

class HomeFilter extends StatelessWidget {
  const HomeFilter({this.showFilter = true, super.key});

  final bool showFilter;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Container(
            height: 50,
            decoration: BoxDecoration(
              color: Colors.red[50],
              borderRadius: BorderRadius.circular(15),
            ),
            child: AppInput(
              onChanged: (p0) {},
              fillColor: Colors.red[50],
              hintStyle: TextStyle(
                color: Colors.red[200],
              ),
              hintText: 'What do you want to order?',
              prefixIcon: Image.asset(
                PngImages.search,
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide.none,
              ),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(
                    color: Colors.white,
                  )),
              border: InputBorder.none,
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        showFilter
            ? InkWell(
                onTap: () {},
                child: Container(
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                    color: Colors.red[50],
                    borderRadius: BorderRadius.circular(15),
                    // boxShadow: const [
                    //   BoxShadow(
                    //     color: Color.fromARGB(255, 207, 206, 206),
                    //     blurRadius: 15.0, // soften the shadow
                    //     spreadRadius: 1.0, //extend the shadow
                    //     offset: Offset(
                    //       2.0, // Move to right 10  horizontally
                    //       2.0, // Move to bottom 10 Vertically
                    //     ),
                    //   )
                    // ],
                  ),
                  child: Image.asset(
                    PngImages.filter,
                  ),
                ),
              )
            : Container(),
      ],
    );
  }
}
