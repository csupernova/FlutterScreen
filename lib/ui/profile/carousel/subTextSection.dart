import 'package:flutter/material.dart';
import 'package:flutter_screen/constants/colors.dart';
import 'package:flutter_screen/constants/sizes.dart';
import 'package:flutter_screen/constants/strings.dart';

class subscriptions extends StatelessWidget {
  const subscriptions({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
            padding: EdgeInsets.only(bottom: 8, left: 16, right: 16),
            child: Text(Strings.subTitleSection,
                style: TextStyle(
                    fontSize: Sizes.fontTitleSize,
                    fontWeight: FontWeight.w700,
                    color: AppColors.black,
                    height: Sizes.heightTitle))),
        Padding(
            padding: EdgeInsets.only(left: 16, right: 20),
            child: Text(Strings.subTextSection,
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: AppColors.grey,
                ))),
      ],
    );
  }
}
