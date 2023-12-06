import 'package:flutter/material.dart';
import 'package:flutter_screen/ui/profile/sections/carousel.dart';
import 'package:flutter_screen/ui/profile/sections/chips.dart';
import 'package:flutter_screen/ui/profile/sections/filtersTextSection.dart';
import 'package:flutter_screen/ui/profile/sections/listTiles.dart';
import 'package:flutter_screen/ui/profile/sections/subTextSection.dart';
import 'package:flutter_screen/ui/profile/sections/tarifsTextSection.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(padding: EdgeInsets.zero, children: const [
      SubsText(),
      Carousel(),
      TarifsAndLimitsText(),
      ListTiles(),
      FiltersText(),
      Chips()
    ]);
  }
}
