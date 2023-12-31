import 'package:flutter/material.dart';
import 'package:flutter_screen/ui/constants/colors.dart';
import 'package:flutter_screen/ui/constants/paddings.dart';
import 'package:flutter_screen/ui/constants/sizes.dart';
import 'package:flutter_screen/ui/constants/strings.dart';

// ignore: camel_case_types
class SubsText extends StatelessWidget {
  const SubsText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
            padding: EdgeInsets.only(
                top: 30,
                bottom: 8,
                left: AppPaddings.mainSidePadding,
                right: AppPaddings.mainSidePadding),
            child: Text(Strings.subTitleSection,
                style: TextStyle(
                    fontSize: Sizes.fontTitleSize,
                    fontWeight: FontWeight.w700,
                    color: AppColors.black,
                    height: Sizes.heightTitle))),
        Padding(
            padding: EdgeInsets.only(
                left: AppPaddings.mainSidePadding,
                right: AppPaddings.mainSidePadding),
            child: Text(Strings.subTextSection,
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
