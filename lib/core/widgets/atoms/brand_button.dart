import 'package:encostay/core/utilities/colors.dart';
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
  }) : assert(!((height != null || width != null) && padding != null));

  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      splashColor: brandWhite,
      child: Material(
        color: Colors.transparent,
        child: Container(
          height: this.height,
          width: this.width,
          padding: (this.height == null && this.width == null)
              ? EdgeInsets.symmetric(horizontal: 16, vertical: 8)
              : EdgeInsets.zero,
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
