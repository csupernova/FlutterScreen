import 'package:flutter/material.dart';
import 'package:flutter_screen/constants/colors.dart';
import 'package:flutter_screen/constants/paddings.dart';
import 'package:flutter_screen/constants/sizes.dart';
import 'package:flutter_screen/constants/strings.dart';

class carousel extends StatelessWidget {
  const carousel({super.key});

  static const List images = [
    Image(
      image: AssetImage(
        "assets/images/icon_sberprime.png",
      ),
      height: Sizes.iconSize,
      width: Sizes.iconSize,
    ),
    CircleAvatar(
        backgroundColor: Colors.green,
        radius: 18,
        child: Icon(Icons.percent_rounded, color: Colors.white)),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(
          top: AppPaddings.paddingCardTop,
          left: AppPaddings.mainSidePadding,
        ),
        child: Container(
          height: Sizes.cardHeight,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: Strings.titles.length,
                  itemBuilder: (context, index) {
                    return Container(
                        width: Sizes.cardWidth,
                        child: Card(
                          shadowColor: Colors.black,
                          surfaceTintColor: Colors.white,
                          child: InkWell(
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                            onTap: () {},
                            child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Padding(
                                          padding: const EdgeInsets.only(
                                              top: AppPaddings.mainSidePadding,
                                              left: AppPaddings.mainSidePadding,
                                              right: 12),
                                          child: images[index]),
                                      Padding(
                                          padding:
                                              const EdgeInsets.only(top: 10),
                                          child: Text(Strings.titles[index],
                                              style: const TextStyle(
                                                fontSize:
                                                    Sizes.fontCardTitleSize,
                                                fontWeight: FontWeight.w500,
                                                color: AppColors.black,
                                              )))
                                    ],
                                  ),
                                  Padding(
                                      padding: const EdgeInsets.only(
                                          top: 18,
                                          left: AppPaddings.mainSidePadding),
                                      child:
                                          Text(Strings.secondary_titles[index],
                                              style: const TextStyle(
                                                fontSize: Sizes.fontRegularSize,
                                                fontWeight: FontWeight.w500,
                                                color: AppColors.black,
                                                height: Sizes.hsubTitlesCard,
                                              ))),
                                  Padding(
                                      padding: const EdgeInsets.only(
                                          bottom: 16, left: 16),
                                      child: Text(
                                          Strings.secondary_subtitles[index],
                                          style: const TextStyle(
                                            fontSize: Sizes.fontRegularSize,
                                            fontWeight: FontWeight.w500,
                                            color: AppColors.black,
                                            height: Sizes.hsubTitlesCard,
                                          )))
                                ]),
                          ),
                        ));
                  },
                ),
              )
            ],
          ),
        ));
  }
}
