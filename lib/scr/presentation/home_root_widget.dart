import 'package:f_food_delivery/scr/presentation/widgets/home_filter.dart';
import 'package:f_food_delivery/scr/presentation/widgets/home_header.dart';
import 'package:flutter/material.dart';

class HomeRootWidget extends StatelessWidget {
  const HomeRootWidget({required this.restWidget, this.showFilter, super.key});

  final Widget restWidget;
  final bool? showFilter;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: double.infinity,
      // color: Colors.yellow,
      child: Expanded(
        flex: 1,
        child: SizedBox(
          // color: Colors.pink,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              const HomeHeader(),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: HomeFilter(
                  showFilter: showFilter ?? true,
                ),
              ),
              Expanded(
                flex: 1,
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [restWidget],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
