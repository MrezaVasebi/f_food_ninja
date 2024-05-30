import 'package:f_food_delivery/scr/presentation/constant/images.dart';
import 'package:f_food_delivery/scr/presentation/widgets/app_input.dart';
import 'package:f_food_delivery/scr/presentation/widgets/square_button.dart';
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
            ? SquareButton(
                child: Image.asset(PngImages.filter),
                onTap: () {},
              )
            : Container(),
      ],
    );
  }
}
