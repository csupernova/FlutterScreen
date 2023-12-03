import 'package:flutter/material.dart';
import 'package:flutter_screen/ui/profile/carousel/carousel.dart';
import 'package:flutter_screen/ui/profile/carousel/subTextSection.dart';
import 'package:flutter_screen/ui/profile/list/listTiles.dart';
import 'package:flutter_screen/ui/profile/list/tarifsText.dart';

class profileScreen extends StatelessWidget {
  const profileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [subscriptions(), carousel(), tarifksText(), listTiles()]),
    );
  }
}
