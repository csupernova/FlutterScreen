import 'package:flutter/material.dart';
import 'package:flutter_screen/constants/colors.dart';
import 'package:flutter_screen/constants/strings.dart';

class listTiles extends StatelessWidget {
  const listTiles({super.key});

  static const listImages = [
    Image(
        image: AssetImage("assets/images/icon_speedometr.png"),
        height: 36,
        width: 36),
    Image(
        image: AssetImage("assets/images/icon_precent.png"),
        height: 36,
        width: 36),
    Image(
      image: AssetImage("assets/images/icon_arrows_forward.png"),
      height: 36,
      width: 36,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        physics: ClampingScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (BuildContext, context) {
          return const Divider(
            height: 0,
            indent: 70.0,
          );
        },
        itemCount: 3,
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {},
            leading: listImages[index],
            title: Text(Strings.titlesForList[index],
                style: const TextStyle(
                  fontSize: 16,
                  height: 20 / 16,
                  fontWeight: FontWeight.w500,
                )),
            subtitle: Text(Strings.subTitlesForList[index],
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: AppColors.grey,
                  height: 18 / 14,
                )),
            trailing: const Icon(Icons.arrow_forward_ios, size: 15),
          );
        });
  }
}
