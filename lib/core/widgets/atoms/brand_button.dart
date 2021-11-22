import 'package:encostay/core/utilities/color_palette.dart';
import 'package:flutter/material.dart';

class BrandButton extends StatelessWidget {
  final Widget child;
  final Color? color;
  final VoidCallback onTap;
  final double? radius, height, width;
  final EdgeInsetsGeometry? padding;
  final BoxDecoration? decoration;

  BrandButton({
    required this.child,
    this.color,
    required this.onTap,
    this.radius,
    this.height,
    this.width,
    this.padding,
    this.decoration,
  });

  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      splashColor: ColorPalette.brandWhite,
      child: Material(
        color: Colors.transparent,
        child: Container(
          height: this.height ?? 43,
          width: this.width ?? 0,
          padding:
              this.padding ?? EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          decoration: this.decoration ??
              BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(this.radius ?? 28),
                ),
                color: this.color ?? Colors.transparent,
              ),
          child: Center(
            child: this.child,
          ),
        ),
      ),
    );
  }
}
