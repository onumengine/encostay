import 'package:encostay/core/utilities/color_palette.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

enum ChipType {
  image,
  vector,
}

class AmenityChip extends StatelessWidget {
  final String iconPath;
  final ChipType chipType;

  const AmenityChip({
    Key? key,
    required this.iconPath,
    this.chipType = ChipType.image,
  }) : super(key: key);

  AmenityChip.svg({
    Key? key,
    required this.iconPath,
    this.chipType = ChipType.vector,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      width: 46,
      decoration: BoxDecoration(
        color: ColorPalette.brandLight,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Center(
        child: (chipType == ChipType.image)
            ? Image.asset(iconPath)
            : SvgPicture.asset(iconPath),
      ),
    );
  }
}
