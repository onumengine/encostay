import 'package:encostay/utilities/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FlatIconButton extends StatelessWidget {
  final String iconPath;
  final String text;

  const FlatIconButton({Key? key, required this.iconPath, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(9, 4, 9, 5),
      decoration: BoxDecoration(
        border: Border(
          left: BorderSide(color: Color(0xffeaeaea)),
          top: BorderSide(color: Color(0xffeaeaea)),
          right: BorderSide(color: Color(0xffeaeaea)),
          bottom: BorderSide(color: Color(0xffeaeaea)),
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          //ImageIcon(AssetImage(iconPath)),
          SvgPicture.asset(
            iconPath,
            width: 14.7,
            height: 12.6,
          ),
          SizedBox(
            width: 6,
          ),
          Text(
            text,
            style: TextStyle(
              fontSize: 8,
              fontWeight: FontWeight.w600,
              height: 18 / 8,
            ),
          ),
        ],
      ),
    );
  }
}
