import 'package:f_food_delivery/scr/presentation/constant/dummy_data.dart';
import 'package:f_food_delivery/scr/presentation/widgets/app_button.dart';
import 'package:f_food_delivery/scr/presentation/widgets/filter_section_list.dart';
import 'package:f_food_delivery/scr/presentation/widgets/home_filter.dart';
import 'package:f_food_delivery/scr/presentation/widgets/home_header.dart';
import 'package:flutter/material.dart';

class FilterSection extends StatelessWidget {
  const FilterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: Column(
              children: [
                const HomeHeader(),
                Expanded(
                  flex: 1,
                  child: SizedBox(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height,
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          children: [
                            const HomeFilter(showFilter: false),
                            FilterSectionList(items: filterItem),
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: AppButton(
              lbl: 'Search',
              onPressed: () {},
              width: double.infinity,
            ),
          )
        ],
      ),
    );
  }
}
