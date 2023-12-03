import 'package:flutter/material.dart';
import 'package:flutter_screen/constants/colors.dart';
import 'package:flutter_screen/constants/paddings.dart';
import 'package:flutter_screen/constants/sizes.dart';
import 'package:flutter_screen/constants/strings.dart';

// ignore: camel_case_types
class tarifksText extends StatelessWidget {
  const tarifksText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
            padding: EdgeInsets.only(
                top: AppPaddings.tarifsTextTop,
                bottom: AppPaddings.tarifsTextBottom,
                left: AppPaddings.mainSidePadding),
            child: Text(Strings.tarifsAndLimits,
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontSize: Sizes.fontTitleSize,
                    fontWeight: FontWeight.w700,
                    color: AppColors.black,
                    height: Sizes.heightTitle))),
        Padding(
            padding: EdgeInsets.only(left: AppPaddings.mainSidePadding),
            child: Text(Strings.secondsubTarif,
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: Sizes.fontRegularSize,
                  fontWeight: FontWeight.w500,
                  color: AppColors.grey,
                ))),
      ],
    );
  }
}
