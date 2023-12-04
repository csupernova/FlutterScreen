import 'package:flutter/material.dart';
import 'package:flutter_screen/constants/colors.dart';
import 'package:flutter_screen/constants/paddings.dart';
import 'package:flutter_screen/constants/strings.dart';
import 'package:flutter_screen/constants/sizes.dart';

SliverAppBar sliverAppBar() {
  return SliverAppBar(
    pinned: true,
    floating: false,
    leading: IconButton(onPressed: () {}, icon: const Icon(Icons.close)),
    actions: [
      IconButton(
          onPressed: () {},
          icon: const Image(
            image: AssetImage("assets/images/icon_exit.png"),
            width: Sizes.iconAppBar,
            height: Sizes.iconAppBar,
          ))
    ],
    bottom: TabBar(
      indicatorSize: TabBarIndicatorSize.tab,
      indicatorColor: AppColors.dividerGreen,
      labelColor: AppColors.black,
      labelStyle: const TextStyle(fontSize: Sizes.fontTabTitleSize),
      tabs: Strings.tabs
          .map(
            (tabName) => Tab(
              text: tabName,
            ),
          )
          .toList(),
    ),
    stretch: true,
    onStretchTrigger: () {
      // Function callback for stretch
      return Future<void>.value();
    },
    expandedHeight: Sizes.topSectionHeight,
    flexibleSpace: const FlexibleSpaceBar(
      stretchModes: <StretchMode>[
        StretchMode.zoomBackground,
        StretchMode.blurBackground,
        StretchMode.fadeTitle,
      ],
      background: Stack(
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Image(
              image: AssetImage("assets/images/avatar.png"),
              height: Sizes.avatarSize,
              width: Sizes.avatarSize,
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: AppPaddings.nameTop, bottom: AppPaddings.nameBottom),
              child: Text(Strings.name,
                  style: TextStyle(
                    fontSize: Sizes.fontNameSize,
                    fontWeight: FontWeight.w700,
                    color: AppColors.black,
                    height: Sizes.heightName,
                  )),
            )
          ]),
        ],
      ),
    ),
  );
}
