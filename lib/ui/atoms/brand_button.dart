import 'package:encostay/utilities/colors.dart';
import 'package:flutter/material.dart';

class BrandButton extends StatelessWidget {
  final Widget child;
  final Color? color;
  final VoidCallback onTap;
  final double? radius, height, width;
  final EdgeInsetsGeometry? padding;

  BrandButton({
    required this.child,
    this.color,
    required this.onTap,
    this.radius,
    this.height,
    this.width,
    this.padding,
  }) : assert(!((height != null || width != null) && padding != null));

  Widget build(BuildContext context) {
    return InkResponse(
      containedInkWell: true,
      highlightShape: BoxShape.rectangle,
      borderRadius: BorderRadius.circular(28),
      splashColor: brandLightGreen,
      highlightColor: brandOrange,
      onTap: this.onTap,
      child: Container(
        height: this.height,
        width: this.width,
        padding: (this.height == null && this.width == null)
            ? EdgeInsets.symmetric(horizontal: 16, vertical: 8)
            : EdgeInsets.zero,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(this.radius ?? 28),
          ),
          color: this.color ?? Colors.transparent,
        ),
        child: Center(
          child: this.child,
        ),
      ),
    );
  }
}
