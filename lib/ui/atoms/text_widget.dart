import 'package:encostay/utilities/colors.dart';
import 'package:encostay/utilities/text_styles.dart';
import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  String hintText;
  GlobalKey key;
  TextEditingController controller;
  bool textIsObscured, autocorrectIsEnabled;

  TextWidget({
    required this.key,
    required this.hintText,
    required this.controller,
    this.textIsObscured = false,
    this.autocorrectIsEnabled = true,
  });

  factory TextWidget.obscured({
    required GlobalKey key,
    required String hintText,
    required TextEditingController controller,
  }) {
    return TextWidget(
      key: key,
      hintText: hintText,
      controller: controller,
      textIsObscured: true,
      autocorrectIsEnabled: false,
    );
  }

  Widget build(BuildContext context) {
    return Container(
      height: 43,
      decoration: BoxDecoration(
        color: brandWhite,
        borderRadius: BorderRadius.all(
          Radius.circular(27.5),
        ),
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
                  color: brandGrey,
                ),
              ),
            ),
          ),
          SizedBox(width: 35),
        ],
      ),
    );
  }
}
