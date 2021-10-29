import 'package:encostay/core/utilities/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

enum ButtonType {
  image,
  vector,
}

class BrandIconButton extends StatelessWidget {
  final Widget child;
  final Color? color;
  final VoidCallback onTap;
  final double? radius, height, width;
  final EdgeInsetsGeometry? padding;
  final String? iconPath;
  final ButtonType? buttonType;

  BrandIconButton({
    required this.iconPath,
    required this.child,
    required this.onTap,
    this.color,
    this.radius,
    this.height,
    this.width,
    this.padding,
    this.buttonType = ButtonType.image,
  })  : assert(!((height != null || width != null) && padding != null)),
        assert(buttonType == ButtonType.image);

  BrandIconButton.svg({
    required this.iconPath,
    required this.child,
    required this.onTap,
    this.color,
    this.radius,
    this.height,
    this.width,
    this.padding,
    this.buttonType = ButtonType.vector,
  })  : assert(!((height != null || width != null) && padding != null)),
        assert(buttonType == ButtonType.vector);

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
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 6),
            blurRadius: 75,
            color: Color(0x15645757),
          )
        ],
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
                ((buttonType == ButtonType.image)
                    ? Image(
                        image: AssetImage(this.iconPath!),
                        height: 15,
                      )
                    : SvgPicture.asset(
                        this.iconPath!,
                        height: 15,
                      )),
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
