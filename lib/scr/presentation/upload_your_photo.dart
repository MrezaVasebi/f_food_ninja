import 'package:f_food_delivery/scr/presentation/carts/photo_cart.dart';
import 'package:f_food_delivery/scr/presentation/constant/images.dart';
import 'package:f_food_delivery/scr/presentation/widgets/app_button.dart';
import 'package:f_food_delivery/scr/presentation/widgets/sign_up_process_header.dart';
import 'package:flutter/material.dart';

class UploadYourPhoto extends StatelessWidget {
  const UploadYourPhoto({super.key});

  @override
  Widget build(BuildContext context) {
    final List images = [
      {'img': PngImages.gallery, 'lbl': 'From Gallery'},
      {'img': PngImages.camera, 'lbl': 'Take Photo'},
    ];

    return Column(
      children: [
        Expanded(
          flex: 1,
          child: Column(
            children: [
              SignUpProcessHeader(
                onTap: () {},
                title: 'Upload Your Photo Profile',
                desc:
                    'This data will be displayed in your account profile for security',
              ),
              const SizedBox(
                height: 20,
              ),
              ListView.separated(
                shrinkWrap: true,
                itemCount: images.length,
                separatorBuilder: (context, index) {
                  return const SizedBox(height: 10);
                },
                itemBuilder: (context, index) {
                  final item = images[index];
                  return PhotoCart(item: item);
                },
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 60),
          child: AppButton(
            lbl: 'Next',
            onPressed: () {},
          ),
        )
      ],
    );
  }
}
