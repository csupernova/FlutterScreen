import 'package:flutter/material.dart';
import 'package:flutter_screen/ui/constants/colors.dart';
import 'package:flutter_screen/ui/constants/paddings.dart';
import 'package:flutter_screen/ui/constants/sizes.dart';
import 'package:flutter_screen/ui/constants/strings.dart';

class ListTiles extends StatelessWidget {
  const ListTiles({super.key});

  static const listImages = [
    AssetImage("assets/images/icon_speedometr.png"),
    AssetImage("assets/images/icon_precent.png"),
    AssetImage("assets/images/icon_arrows_forward.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        padding: EdgeInsets.zero,
        physics: ClampingScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (BuildContext, context) {
          return const Divider(
            indent: AppPaddings.dividerLeftPadding,
          );
        },
        itemCount: 3,
        itemBuilder: (context, index) {
          return ListTile(
            dense: true,
            onTap: () {},
            leading: Image(
              image: listImages[index],
              height: Sizes.iconSize,
              width: Sizes.iconSize,
            ),
            title: Text(Strings.titlesForList[index],
                style: const TextStyle(
                  fontSize: Sizes.fontListTitleSize,
                  height: Sizes.heightListTitle,
                  fontWeight: FontWeight.w500,
                )),
            subtitle: Text(Strings.subTitlesForList[index],
                style: const TextStyle(
                  fontSize: Sizes.fontRegularSize,
                  fontWeight: FontWeight.w500,
                  color: AppColors.grey,
                  height: Sizes.heightListText,
                )),
            trailing:
                const Icon(Icons.arrow_forward_ios, size: Sizes.arrowSize),
          );
        });
  }
}
