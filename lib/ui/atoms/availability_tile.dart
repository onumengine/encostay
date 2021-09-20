import 'package:encostay/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AvailabilityTile extends StatelessWidget {
  final String text;

  const AvailabilityTile({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SvgPicture.asset(ORANGE_VECTORS_PATH + 'ic_orange_calendar.svg'),
          SizedBox(
            width: 15,
          ),
          Flexible(
            child: Text(
              text,
              style: TextStyle(
                fontSize: 12,
                height: 22 / 12,
                color: Color(0xffa1a0a6),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
