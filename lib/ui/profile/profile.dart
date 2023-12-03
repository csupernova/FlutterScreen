import 'package:flutter/material.dart';
import 'package:flutter_screen/ui/profile/carousel/carousel.dart';
import 'package:flutter_screen/ui/profile/carousel/subTextSection.dart';
import 'package:flutter_screen/ui/profile/filters/chips.dart';
import 'package:flutter_screen/ui/profile/filters/textSection.dart';
import 'package:flutter_screen/ui/profile/list/listTiles.dart';
import 'package:flutter_screen/ui/profile/list/tarifsText.dart';

class profileScreen extends StatelessWidget {
  const profileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(children: const [
      subscriptions(),
      carousel(),
      tarifksText(),
      listTiles(),
      filtersText(),
      Chips()
    ]);
  }
}
