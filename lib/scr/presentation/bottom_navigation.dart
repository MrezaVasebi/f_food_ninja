import 'package:f_food_delivery/scr/presentation/chat.dart';
import 'package:f_food_delivery/scr/presentation/handle_home_widget.dart';
import 'package:f_food_delivery/scr/presentation/orders.dart';
import 'package:f_food_delivery/scr/presentation/profile.dart';
import 'package:f_food_delivery/scr/presentation/root_scaffold_widget.dart';
import 'package:f_food_delivery/scr/presentation/widgets/custom_tab.dart';
import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    // const Home(),
    const HandleHomeWidget(),
    const Profile(),
    const Orders(),
    const Chat()
  ];

  @override
  Widget build(BuildContext context) {
    const selectedColor = Colors.green;
    const unSelectedColor = Color.fromARGB(255, 169, 223, 169);

    List<Map<String, dynamic>> tabs = [
      {
        "label": 'Home',
        "tabIndex": 0,
        "selectedIcon": const Icon(
          Icons.home,
          color: selectedColor,
        ),
        "unSelectedIcon": const Icon(
          Icons.home,
          color: unSelectedColor,
        ),
      },
      {
        "label": 'Profile',
        "tabIndex": 1,
        "selectedIcon": const Icon(
          Icons.person,
          color: selectedColor,
        ),
        "unSelectedIcon": const Icon(
          Icons.person,
          color: unSelectedColor,
        ),
      },
      {
        "label": 'Order',
        "tabIndex": 2,
        "selectedIcon": const Icon(
          Icons.shopping_cart,
          color: selectedColor,
        ),
        "unSelectedIcon": const Icon(
          Icons.shopping_cart,
          color: unSelectedColor,
        ),
      },
      {
        "label": 'Chat',
        "tabIndex": 3,
        "selectedIcon": const Icon(
          Icons.chat,
          color: selectedColor,
        ),
        "unSelectedIcon": const Icon(
          Icons.chat,
          color: unSelectedColor,
        ),
      },
    ];

    return RootScaffoldWidget(
      bottomNavigationBar: Container(
        height: 60,
        margin: const EdgeInsets.only(
          left: 20,
          right: 20,
          bottom: 20,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.min,
          children: [
            ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: tabs.length,
              itemBuilder: (context, index) {
                final item = tabs[index];

                return CustomTab(
                  label: item['label'],
                  onPressed: () {
                    setState(() {
                      _selectedIndex = item['tabIndex'];
                    });
                  },
                  tabIndex: item['tabIndex'],
                  selectedIndex: _selectedIndex,
                  selectedIcon: item['selectedIcon'],
                  unSelectedIcon: item['unSelectedIcon'],
                );
              },
            )
          ],
        ),
      ),
      child: _widgetOptions[_selectedIndex],
    );
  }
}
