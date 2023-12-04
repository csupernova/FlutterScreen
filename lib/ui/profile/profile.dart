import 'package:flutter/material.dart';
import 'package:flutter_screen/ui/profile/carousel.dart';
import 'package:flutter_screen/ui/profile/chips.dart';
import 'package:flutter_screen/ui/profile/listTiles.dart';
import 'package:flutter_screen/ui/profile/subTextSection.dart';
import 'package:flutter_screen/ui/profile/tarifsText.dart';
import 'package:flutter_screen/ui/profile/textSection.dart';

class profileScreen extends StatelessWidget {
  const profileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(padding: EdgeInsets.zero, children: const [
      subscriptions(),
      carousel(),
      tarifksText(),
      listTiles(),
      filtersText(),
      Chips()
    ]);
  }
}
