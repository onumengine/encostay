import 'package:encostay/core/utilities/color_palette.dart';
import 'package:encostay/core/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SurveyOptionTile extends StatefulWidget {
  const SurveyOptionTile({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  _SurveyOptionTileState createState() => _SurveyOptionTileState();
}

class _SurveyOptionTileState extends State<SurveyOptionTile> {
  bool _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Material(
        color: Colors.transparent,
        child: InkResponse(
          onTap: _toggleSelection,
          child: Container(
            height: 100,
            padding: EdgeInsets.only(left: 26, right: 23),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: _isSelected
                  ? ColorPalette.brandLightGreen
                  : ColorPalette.greyCardColor,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                  child: Text(
                    widget.title,
                    style: TextStyle(
                      height: 25 / 14,
                      color: ColorPalette.lightTextColor,
                    ),
                  ),
                ),
                SvgPicture.asset(
                  (_isSelected
                      ? COLORED_VECTORS_PATH + 'ic_marked.svg'
                      : VECTORS_ROOT_PATH + 'unmarked.svg'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _toggleSelection() {
    setState(() {
      _isSelected = !_isSelected;
    });
  }
}
