import 'package:encostay/utilities/colors.dart';
import 'package:flutter/material.dart';

class AmenityChip extends StatelessWidget {
  final String iconPath;

  const AmenityChip({
    Key? key,
    required this.iconPath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      width: 46,
      decoration: BoxDecoration(
        color: brandLight,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Center(
        child: Image.asset(iconPath),
      ),
    );
  }
}
