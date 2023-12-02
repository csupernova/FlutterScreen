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
      IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_right_alt))
    ],
    bottom: const TabBar(
        indicatorSize: TabBarIndicatorSize.tab,
        indicatorColor: AppColors.dividerGreen,
        labelColor: AppColors.black,
        tabs: [
          Tab(
            text: Strings.profile,
          ),
          Tab(
            text: Strings.settings,
          )
        ]),
    stretch: true,
    onStretchTrigger: () {
      // Function callback for stretch
      return Future<void>.value();
    },
    expandedHeight: 260.0,
    flexibleSpace: const FlexibleSpaceBar(
      stretchModes: <StretchMode>[
        StretchMode.zoomBackground,
        StretchMode.blurBackground,
        StretchMode.fadeTitle,
      ],
      background: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Image(
              image: AssetImage("assets/images/avatar.png"),
              height: 110,
              width: 110,
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: AppPaddings.nameTop, bottom: AppPaddings.nameBottom),
              child: Text(Strings.name,
                  style: TextStyle(
                    fontSize: Sizes.fontNameSize,
                    fontWeight: FontWeight.w700,
                    fontFamily: "SF Pro Display",
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
