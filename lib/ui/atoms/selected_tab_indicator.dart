import 'package:encostay/core/utilities/colors.dart';
import 'package:flutter/material.dart';

class SelectedTab extends StatefulWidget {
  final int index;
  void Function() onTap;

  SelectedTab({
    required this.onTap,
    required this.index,
  });

  _SelectedTabState createState() => _SelectedTabState();
}

class _SelectedTabState extends State<SelectedTab> {
  Widget build(context) {
    Size screenSize = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        height: 79,
        width: (screenSize.width / 3.35),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(17),
          color: brandOrange,
          boxShadow: [
            BoxShadow(
              offset: Offset(9, 11),
              blurRadius: 28,
              color: Color(0x1cff765e),
            )
          ],
        ),
        child: Center(
            child: Text(
          'Step ${widget.index}',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            height: 23 / 14,
            color: brandWhite,
          ),
        )),
      ),
    );
  }
}
