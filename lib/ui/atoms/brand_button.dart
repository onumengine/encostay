import 'package:flutter/material.dart';

class BrandButton extends StatelessWidget {
  final Widget child;
  final Color color;
  final VoidCallback onTap;
  final double? radius, height, width;

  BrandButton({
    required this.child,
    required this.color,
    required this.onTap,
    this.radius,
    this.height,
    this.width,
  });

  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: this.onTap,
      child: Container(
        height: this.height ?? 58,
        width: this.width ?? 174,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(this.radius ?? 28),
          ),
          color: this.color,
        ),
        child: Center(
          child: this.child,
        ),
      ),
    );
  }
}
