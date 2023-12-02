import 'package:flutter/material.dart';
import 'package:flutter_screen/constants/colors.dart';
import 'package:flutter_screen/constants/sizes.dart';
import 'package:flutter_screen/constants/strings.dart';

class carousel extends StatelessWidget {
  const carousel({super.key});

  static const List images = [
    Image(
      image: AssetImage(
        "assets/images/icon_sberprime.png",
      ),
      height: 36,
      width: 36,
    ),
    CircleAvatar(
        backgroundColor: Colors.green,
        radius: 18,
        child: Icon(Icons.percent_rounded, color: Colors.white)),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 8, left: 16, right: 16),
        child: Container(
          height: 130,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return SizedBox(
                      width: 216,
                      child: Card(
                        surfaceTintColor: Colors.white,
                        child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Padding(
                                      padding: const EdgeInsets.only(
                                          top: 16, left: 16, right: 12),
                                      child: images[index]),
                                  Padding(
                                      padding: EdgeInsets.only(top: 10),
                                      child: Text(Strings.titles[index],
                                          style: const TextStyle(
                                            fontSize: Sizes.fontCardTitleSize,
                                            fontWeight: FontWeight.w500,
                                            color: AppColors.black,
                                            height: 20 / 16,
                                          )))
                                ],
                              ),
                              Padding(
                                  padding: EdgeInsets.only(top: 18, left: 16),
                                  child: Text(Strings.secondary_titles[index],
                                      style: const TextStyle(
                                        fontSize: Sizes.fontRegularSize,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xff000000),
                                        height: 18 / 14,
                                      ))),
                              Padding(
                                  padding:
                                      EdgeInsets.only(bottom: 16, left: 16),
                                  child:
                                      Text(Strings.secondary_subtitles[index],
                                          style: TextStyle(
                                            fontSize: Sizes.fontRegularSize,
                                            fontWeight: FontWeight.w500,
                                            color: Color(0xff000000),
                                            height: 18 / 14,
                                          )))
                            ]),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ));
  }
}
