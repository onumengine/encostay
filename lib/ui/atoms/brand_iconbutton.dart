import 'package:encostay/utilities/colors.dart';
import 'package:flutter/material.dart';

class BrandIconButton extends StatelessWidget {
  final Widget child;
  final Color? color;
  final VoidCallback onTap;
  final double? radius, height, width;
  final EdgeInsetsGeometry? padding;
  final String? iconPath;

  BrandIconButton({
    required this.iconPath,
    required this.child,
    required this.onTap,
    this.color,
    this.radius,
    this.height,
    this.width,
    this.padding,
  }) : assert(!((height != null || width != null) && padding != null));

  Widget build(BuildContext context) {
    return Container(
      height: this.height,
      width: this.width,
      /// With this expression, you'll be able to set the padding you want whether the height
      /// or width are set or not and if you don't set your own padding, a default value will
      /// be assigned to it for you
      padding: (this.height == null || this.width == null)
          ? this.padding ?? EdgeInsets.symmetric(horizontal: 16, vertical: 8)
          : this.padding ?? EdgeInsets.zero,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(this.radius ?? 28),
        ),
        color: this.color ?? Colors.transparent,
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          splashColor: brandWhite.withOpacity(0.5),
          borderRadius: BorderRadius.circular(28),
          onTap: this.onTap,
          child: Center(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Image(
                  image: AssetImage(this.iconPath!),
                  height: 15,
                ),
                SizedBox(width: 12),
                this.child,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
