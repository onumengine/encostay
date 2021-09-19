import 'package:encostay/utilities/colors.dart';
import 'package:flutter/material.dart';

class CustomTabIndicator extends StatefulWidget {
  bool isSelected = false;
  int index;

  CustomTabIndicator({Key? key, required this.index}) : super(key: key);

  CustomTabIndicator.withValue({required this.isSelected, required this.index});

  @override
  _CustomTabIndicatorState createState() =>
      _CustomTabIndicatorState(this.isSelected);
}

class _CustomTabIndicatorState extends State<CustomTabIndicator> {
  bool _isSelected = false;

  _CustomTabIndicatorState(this._isSelected);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Container(
      height: 79,
      width:
          (_isSelected) ? (screenSize.width / 3.35) : (screenSize.width / 7.98),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(17),
        color: (_isSelected) ? brandOrange : brandLight,
      ),
      child: Center(
        child: (_isSelected)
            ? Text(
                'Step ${widget.index}',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  height: 23 / 14,
                  color: brandWhite,
                ),
              )
            : Text(
                '${widget.index}',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  height: 23 / 14,
                  color: lightTextColor,
                ),
              ),
      ),
    );
  }

  void toggleSelection() {
    setState(() {
      _isSelected = !_isSelected;
    });
  }
}
