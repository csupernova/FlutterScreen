import 'package:flutter/material.dart';
import 'package:flutter_screen/constants/colors.dart';
import 'package:flutter_screen/constants/strings.dart';

// ignore: camel_case_types
class Chips extends StatefulWidget {
  const Chips({super.key});
  @override
  // ignore: library_private_types_in_public_api
  _ChipsState createState() => _ChipsState();
}

class _ChipsState extends State<Chips> {
  List<bool> _isPressed = [false, false, false, false, false, false, false];
  List<bool> _isSelected = [false, false, false, false, false, false, false];

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 16),
        child: Wrap(
          runSpacing: -5,
          spacing: 8,
          children: Strings.filters.asMap().entries.map((entry) {
            int index = entry.key;
            String tag = entry.value;
            return RawChip(
              selected: _isSelected[index],
              label: Text(tag,
                  style: const TextStyle(
                    fontSize: 14,
                  )),
              side: BorderSide.none,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              onPressed: () {
                setState(() {
                  _isSelected[index] = !_isSelected[index];
                  _isPressed[index] = !_isPressed[index];
                });
              },
              backgroundColor: Color.fromRGBO(0, 0, 0, 0.08),
              selectedColor: AppColors.iconGreen,
            );
          }).toList(),
        ));
  }
}
