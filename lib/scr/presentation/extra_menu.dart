import 'package:f_food_delivery/scr/presentation/constant/dummy_data.dart';
import 'package:f_food_delivery/scr/presentation/home_root_widget.dart';
import 'package:f_food_delivery/scr/presentation/list/menu_list.dart';
import 'package:f_food_delivery/scr/presentation/widgets/app_text.dart';
import 'package:flutter/material.dart';

class ExtraMenu extends StatelessWidget {
  const ExtraMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return HomeRootWidget(
      showFilter: false,
      restWidget: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const AppText(
            lbl: 'Popular Menu',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          MediaQuery.removePadding(
            context: context,
            removeTop: true,
            child: MenuList(
              list: popular,
            ),
          ),
        ],
      ),
    );
  }
}
