import 'package:encostay/utilities/colors.dart';
import 'package:encostay/utilities/constants.dart';
import 'package:flutter/material.dart';

class FiltersButton extends StatelessWidget {
  FiltersButton({
    Key? key,
    this.foregroundColor,
    this.backgroundColor,
  }) : super(key: key);

  Color? backgroundColor, foregroundColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 33,
        width: 36,
        decoration: BoxDecoration(
          color: backgroundColor ?? brandBrown,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: ImageIcon(
          AssetImage(COLORED_IMAGES_PATH + 'filter_icon.png'),
          color: foregroundColor ?? brandWhite,
        ),
      ),
    );
  }
}
