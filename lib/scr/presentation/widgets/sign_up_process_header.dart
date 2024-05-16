import 'package:f_food_delivery/scr/presentation/widgets/app_text.dart';
import 'package:flutter/material.dart';

class SignUpProcessHeader extends StatelessWidget {
  const SignUpProcessHeader(
      {required this.onTap,
      required this.title,
      required this.desc,
      super.key});

  final String? desc;
  final String? title;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: onTap,
            child: Container(
              width: 45,
              height: 45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: const Color.fromARGB(255, 241, 221, 221),
              ),
              child: const Center(
                child: Icon(
                  size: 32,
                  Icons.chevron_left,
                  color: Colors.red,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 19,
          ),
          AppText(
            lbl: title,
            style: const TextStyle(
              fontSize: 25,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 19,
          ),
          AppText(
            lbl: desc,
            style: const TextStyle(
              fontSize: 12,
              color: Colors.black,
              fontWeight: FontWeight.normal,
            ),
          )
        ],
      ),
    );
  }
}
