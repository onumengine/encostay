import 'package:encostay/core/utilities/color_palette.dart';
import 'package:encostay/core/utilities/constants.dart';
import 'package:encostay/core/utilities/route_names.dart';
import 'package:flutter/material.dart';

class FiltersButton extends StatelessWidget {
  FiltersButton({
    Key? key,
    this.foregroundColor,
    this.backgroundColor,
    this.onTap,
  }) : super(key: key);

  final Color? backgroundColor, foregroundColor;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap ??
          () {
            Navigator.of(context).pushNamed(RouteNames.FILTERS);
          },
      child: Container(
        height: 33,
        width: 36,
        decoration: BoxDecoration(
          color: backgroundColor ?? brandBrown,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: ImageIcon(
          AssetImage(COLORED_ICONS_PATH + 'ic_filter.png'),
          color: foregroundColor ?? brandWhite,
        ),
      ),
    );
  }
}
