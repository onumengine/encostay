import 'package:encostay/utilities/colors.dart';
import 'package:flutter/material.dart';

class FiltersButton extends StatefulWidget {
  const FiltersButton({Key? key}) : super(key: key);

  @override
  _FiltersButtonState createState() => _FiltersButtonState();
}

class _FiltersButtonState extends State<FiltersButton> {
  bool _isSelected = true;

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
        width: 36,
        decoration: BoxDecoration(
          color: (_isSelected) ? brandBrown : brandWhite,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: ImageIcon(
          AssetImage('lib/assets/images/filter_icon.png'),
          color: brandWhite,
        ),
      ),
    );
  }
}
