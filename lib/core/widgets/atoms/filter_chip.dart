import 'package:encostay/core/utilities/colors.dart';
import 'package:flutter/material.dart';

class CustomChip extends StatefulWidget {
  final String label;

  const CustomChip({Key? key, required this.label}) : super(key: key);

  @override
  _CustomChipState createState() => _CustomChipState();
}

class _CustomChipState extends State<CustomChip> {
  bool _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isSelected = !_isSelected;
        });
      },
      child: Container(
        height: 33,
        padding: EdgeInsets.all(10),
        child: Text(
          widget.label,
          style: TextStyle(
            color: (_isSelected) ? brandWhite : brandBrown,
            fontSize: 10,
            fontWeight: FontWeight.w600,
            height: 12.19 / 10,
          ),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          border: Border.all(color: Color(0x11000000)),
          color: (_isSelected) ? brandBrown : Colors.transparent,
        ),
      ),
    );
  }
}
