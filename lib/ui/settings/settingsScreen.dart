import 'package:flutter/material.dart';
import 'package:flutter_screen/ui/constants/strings.dart';

class settingsScreen extends StatelessWidget {
  const settingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(Strings.settingsScreen),
      ),
    );
  }
}
