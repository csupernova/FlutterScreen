import 'package:flutter/material.dart';
import 'package:flutter_screen/constants/colors.dart';
import 'package:flutter_screen/constants/paddings.dart';
import 'package:flutter_screen/constants/sizes.dart';
import 'package:flutter_screen/constants/strings.dart';

// ignore: camel_case_types
class Chips extends StatefulWidget {
  const Chips({super.key});
  @override
  // ignore: library_private_types_in_public_api
  _ChipsState createState() => _ChipsState();
}

class _ChipsState extends State<Chips> {
  final List<bool> _isSelected = [
    false,
    false,
    false,
    false,
    false,
    false,
    false
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: AppPaddings.mainSidePadding),
        child: Wrap(
          runSpacing: AppPaddings.filterRunSpacing,
          spacing: AppPaddings.filterSpacing,
          children: Strings.filters.asMap().entries.map((entry) {
            int index = entry.key;
            String tag = entry.value;
            return RawChip(
              selected: _isSelected[index],
              label: Text(tag,
                  style: const TextStyle(
                    fontSize: Sizes.fontRegularSize,
                  )),
              side: BorderSide.none,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                      Radius.circular(Sizes.radiusBorderChip))),
              onPressed: () {
                setState(() {
                  _isSelected[index] = !_isSelected[index];
                });
              },
              backgroundColor: AppColors.greyChip,
              selectedColor: AppColors.iconGreen,
            );
          }).toList(),
        ));
  }
}
