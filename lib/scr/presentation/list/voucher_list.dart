import 'package:f_food_delivery/scr/presentation/constant/images.dart';
import 'package:f_food_delivery/scr/presentation/root_scaffold_widget.dart';
import 'package:f_food_delivery/scr/presentation/widgets/app_button.dart';
import 'package:f_food_delivery/scr/presentation/widgets/header.dart';
import 'package:flutter/material.dart';

class VoucherList extends StatelessWidget {
  const VoucherList({super.key});

  @override
  Widget build(BuildContext context) {
    final List vouchers = [PngImages.voucherOne, PngImages.voucherTwo];

    return RootScaffoldWidget(
      child: SizedBox(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        child: Expanded(
          flex: 1,
          child: Column(
            children: [
              const Header(
                title: 'Voucher Promo',
              ),
              Expanded(
                flex: 1,
                child: SizedBox(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 10,
                    ),
                    child: ListView.builder(
                        itemBuilder: (context, index) {
                          final item = vouchers[index];
                          return Image.asset(
                            item,
                            fit: BoxFit.cover,
                            width: double.infinity,
                          );
                        },
                        itemCount: vouchers.length),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 33,
                  left: 20,
                  right: 20,
                ),
                child: AppButton(
                  lbl: 'Check out',
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  width: double.infinity,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
