import 'package:encostay/core/utilities/color_palette.dart';
import 'package:encostay/core/utilities/text_styles.dart';
import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  String hintText;
  double? height;
  GlobalKey key;
  TextStyle? inputStyle;
  TextEditingController controller;
  bool textIsObscured, autocorrectIsEnabled;

  TextWidget({
    required this.key,
    required this.hintText,
    required this.controller,
    this.height,
    this.inputStyle,
    this.textIsObscured = false,
    this.autocorrectIsEnabled = true,
  });

  factory TextWidget.obscured({
    required GlobalKey key,
    required String hintText,
    required TextEditingController controller,
    double? height,
    TextStyle? inputStyle,
  }) {
    return TextWidget(
      key: key,
      hintText: hintText,
      controller: controller,
      height: height,
      inputStyle: inputStyle,
      textIsObscured: true,
      autocorrectIsEnabled: false,
    );
  }

  Widget build(BuildContext context) {
    return Container(
      height: this.height ?? 43,
      decoration: BoxDecoration(
        color: ColorPalette.brandWhite,
        borderRadius: BorderRadius.all(
          Radius.circular(27.5),
        ),
        boxShadow: [
          BoxShadow(
            color: Color(0x10939393),
            blurRadius: 6,
            offset: Offset.fromDirection(0.2),
          ),
        ],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          SizedBox(width: 35),
          Expanded(
            child: TextField(
              controller: this.controller,
              textAlignVertical: TextAlignVertical.bottom,
              obscureText: textIsObscured,
              autocorrect: autocorrectIsEnabled,
              decoration: InputDecoration.collapsed(
                hintText: this.hintText,
                hintStyle: TextStyle(
                  fontSize: normal14.fontSize,
                  height: normal14.height,
                  fontWeight: normal14.fontWeight,
                  color: ColorPalette.brandGrey,
                ),
              ),
              style: inputStyle ??
                  TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    height: 23 / 14,
                    color: ColorPalette.brandGreyAlt,
                  ),
            ),
          ),
          SizedBox(width: 35),
        ],
      ),
    );
  }
}
