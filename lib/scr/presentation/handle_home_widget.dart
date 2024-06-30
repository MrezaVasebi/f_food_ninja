import 'package:f_food_delivery/scr/presentation/extra_menu.dart';
import 'package:f_food_delivery/scr/presentation/extra_restaurant.dart';
import 'package:f_food_delivery/scr/presentation/home.dart';
import 'package:flutter/material.dart';

class HandleHomeWidget extends StatefulWidget {
  const HandleHomeWidget({super.key});

  @override
  State<HandleHomeWidget> createState() => _HandleHomeWidgetState();
}

class _HandleHomeWidgetState extends State<HandleHomeWidget> {
  Widget selectedWidget = const Home();

  @override
  void initState() {
    super.initState();

    selectedWidget = Home(
      onPressExtraMenu: () {
        setState(() {
          selectedWidget = const ExtraMenu();
        });
      },
      onPressExtraRestaurant: () {
        setState(() {
          selectedWidget = const ExtraRestaurant();
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return selectedWidget;
  }
}
