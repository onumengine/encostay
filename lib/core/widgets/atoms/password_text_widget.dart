import 'package:encostay/core/utilities/color_palette.dart';
import 'package:encostay/core/utilities/text_styles.dart';
import 'package:flutter/material.dart';

class PasswordTextWidget extends StatefulWidget {
  final String hintText;
  final double? height;
  final GlobalKey key;
  final TextStyle? inputStyle;
  final TextEditingController controller;

  PasswordTextWidget({
    required this.controller,
    required this.hintText,
    required this.key,
    this.inputStyle,
    this.height,
  });

  _PasswordTextWidgetState createState() => _PasswordTextWidgetState();
}

class _PasswordTextWidgetState extends State<PasswordTextWidget> {
  bool _obscureText = true;
  IconData? _visibilityIcon = Icons.visibility_off_rounded;

  Widget build(BuildContext context) {
    return Container(
      height: widget.height ?? 43,
      decoration: BoxDecoration(
        color: ColorPalette.brandWhite,
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
              controller: widget.controller,
              obscureText: _obscureText,
              autofillHints: null,
              autocorrect: false,
              textAlignVertical: TextAlignVertical.bottom,
              decoration: InputDecoration.collapsed(
                hintText: widget.hintText,
                hintStyle: TextStyle(
                  fontSize: normal14.fontSize,
                  height: normal14.height,
                  fontWeight: normal14.fontWeight,
                  color: ColorPalette.brandGrey,
                ),
              ),
              style: widget.inputStyle,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 23),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  _changeVisibility();
                });
              },
              child: Icon(
                _visibilityIcon,
                size: 15.6,
                color: ColorPalette.brandGrey,
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _changeVisibility() {
    if (_obscureText) {
      _obscureText = false;
      _visibilityIcon = Icons.visibility_rounded;
    } else {
      _obscureText = true;
      _visibilityIcon = Icons.visibility_off_rounded;
    }
  }
}
