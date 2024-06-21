import 'package:f_food_delivery/scr/presentation/root_scaffold_widget.dart';
import 'package:f_food_delivery/scr/presentation/widgets/home_filter.dart';
import 'package:f_food_delivery/scr/presentation/widgets/home_header.dart';
import 'package:flutter/material.dart';

class HomeRootWidget extends StatelessWidget {
  const HomeRootWidget(
      {required this.restWidget, this.onTapNotif, this.showFilter, super.key});

  final bool? showFilter;
  final Widget restWidget;
  final Function()? onTapNotif;

  @override
  Widget build(BuildContext context) {
    return RootScaffoldWidget(
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        // color: Colors.yellow,
        child: Expanded(
          flex: 1,
          child: SizedBox(
            // color: Colors.pink,
            height: MediaQuery.of(context).size.height,
            child: Expanded(
              flex: 1,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const HomeHeader(),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        children: [
                          // const SizedBox(height: 20),
                          HomeFilter(
                            showFilter: showFilter ?? true,
                          ),
                          const SizedBox(height: 20),
                          restWidget,
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
