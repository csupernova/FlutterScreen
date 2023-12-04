import 'package:flutter/material.dart';
import 'package:flutter_screen/ui/constants/colors.dart';
import 'package:flutter_screen/ui/constants/paddings.dart';
import 'package:flutter_screen/ui/constants/sizes.dart';
import 'package:flutter_screen/ui/constants/strings.dart';

class FiltersText extends StatelessWidget {
  const FiltersText({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: const Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
            padding: EdgeInsets.only(
                top: AppPaddings.filterTitleTop,
                bottom: AppPaddings.filterTitleBottom,
                left: AppPaddings.mainSidePadding,
                right: AppPaddings.mainSidePadding),
            child: Text(Strings.interests,
                style: TextStyle(
                    fontSize: Sizes.fontTitleSize,
                    fontWeight: FontWeight.w700,
                    color: AppColors.black,
                    height: Sizes.heightTitle))),
        Padding(
            padding: EdgeInsets.only(
                left: AppPaddings.mainSidePadding,
                right: AppPaddings.filterSubTextRight,
                bottom: AppPaddings.filterSubTextBottom),
            child: Text(Strings.subTextInterests,
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: Sizes.fontRegularSize,
                  fontWeight: FontWeight.w500,
                  color: AppColors.grey,
                ))),
      ],
    ));
  }
}
