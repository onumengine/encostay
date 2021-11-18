import 'package:encostay/core/utilities/color_palette.dart';
import 'package:flutter/material.dart';

abstract class CustomTab extends StatefulWidget {}

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

class UnselectedTab extends CustomTab {
  final int index;
  void Function() onTap;

  UnselectedTab({
    required this.onTap,
    required this.index,
  });

  _UnselectedTabState createState() => _UnselectedTabState();
}

class _UnselectedTabState extends State<UnselectedTab> {
  Widget build(context) {
    Size screenSize = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        height: 79,
        width: (screenSize.width / 7.98),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(17),
          color: brandLight,
        ),
        child: Center(
          child: Text(
            '${widget.index}',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              height: 23 / 14,
              color: lightTextColor,
            ),
          ),
        ),
      ),
    );
  }
}

class CustomTabIndicator extends StatefulWidget {
  bool isSelected = false;
  int index;
  void Function() onTap;

  CustomTabIndicator({
    Key? key,
    required this.index,
    required this.onTap,
  }) : super(key: key);

  CustomTabIndicator.withValue({
    required this.isSelected,
    required this.index,
    required this.onTap,
  });

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

    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        height: 79,
        width: (_isSelected)
            ? (screenSize.width / 3.35)
            : (screenSize.width / 7.98),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(17),
          color: (_isSelected) ? brandOrange : brandLight,
          boxShadow: (_isSelected)
              ? [
                  BoxShadow(
                    offset: Offset(9, 11),
                    blurRadius: 28,
                    color: Color(0x1cff765e),
                  )
                ]
              : [],
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
      ),
    );
  }

  void toggleSelection() {
    setState(() {
      _isSelected = !_isSelected;
    });
  }
}
