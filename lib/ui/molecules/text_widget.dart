import 'package:encostay/utilities/colors.dart';
import 'package:encostay/utilities/text_styles.dart';
import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  String hintText;
  GlobalKey key;
  TextEditingController controller;
  bool textIsObscured;

  TextWidget({
    required this.key,
    required this.hintText,
    required this.controller,
    this.textIsObscured = false,
  });

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
