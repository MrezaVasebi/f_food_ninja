import 'package:f_food_delivery/scr/presentation/carts/photo_cart.dart';
import 'package:f_food_delivery/scr/presentation/constant/images.dart';
import 'package:f_food_delivery/scr/presentation/sign_in_up_root_widget.dart';
import 'package:flutter/material.dart';

class UploadYourPhoto extends StatelessWidget {
  const UploadYourPhoto({super.key});

  @override
  Widget build(BuildContext context) {
    final List images = [
      {'img': PngImages.gallery, 'lbl': 'From Gallery'},
      {'img': PngImages.camera, 'lbl': 'Take Photo'},
    ];

    return SignInUpRootWidget(
      desc: 'This data will be displayed in your account profile for security',
      onPressedBtn: () {
        Navigator.pushNamed(context, '/yourLocation');
      },
      onTapBack: () {
        Navigator.pop(context);
      },
      title: 'Upload Your Photo Profile',
      bodyChild: ListView.separated(
        shrinkWrap: true,
        itemCount: images.length,
        separatorBuilder: (context, index) {
          return const SizedBox(height: 10);
        },
        itemBuilder: (context, index) {
          final item = images[index];
          return PhotoCart(item: item);
        },
      ),
    );
  }
}
