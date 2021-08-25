import 'package:flutter/material.dart';

class PasswordTextWidget extends StatefulWidget {
  String hintText;
  GlobalKey key;
  TextEditingController controller;

  PasswordTextWidget({
    required this.key,
    required this.hintText,
    required this.controller,
  });

  _PasswordTextWidgetState createState() => _PasswordTextWidgetState();
}

class _PasswordTextWidgetState extends State<PasswordTextWidget> {
  bool _obscureText = true;
  IconData? _visibilityIcon = Icons.visibility_off_rounded;

  Widget build(BuildContext context) {
    return Container(
      height: 43,
      decoration: BoxDecoration(
        color: Colors.black12,
        borderRadius: BorderRadius.all(
          Radius.circular(27.5),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          SizedBox(width: 20),
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
                  color: Colors.black26,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  _changeVisibility();
                });
              },
              child: Icon(_visibilityIcon),
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
