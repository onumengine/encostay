import 'package:encostay/utilities/colors.dart';
import 'package:flutter/material.dart';

class BedroomCard extends StatefulWidget {
  bool isSelected;
  int numberOfBeds;

  BedroomCard({
    Key? key,
    this.numberOfBeds = 1,
    this.isSelected = false,
  }) : super(key: key);

  @override
  _BedroomCardState createState() => _BedroomCardState(
        isSelected: this.isSelected,
        numberOfBeds: this.numberOfBeds,
      );
}

class _BedroomCardState extends State<BedroomCard> {
  bool isSelected;
  int numberOfBeds;

  _BedroomCardState({
    required this.isSelected,
    required this.numberOfBeds,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 112,
      width: MediaQuery.of(context).size.width / 2,
      padding: EdgeInsets.symmetric(horizontal: 16) +
          EdgeInsets.only(top: 16, bottom: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: (this.isSelected) ? brandLight : Colors.transparent,
        border: (isSelected)
            ? null
            : Border.all(
                color: Color(0xffd8dbe6),
              ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Image.asset('lib/assets/images/bed_icon.png'),
          SizedBox(
            height: 11,
          ),
          Text(
            'Bedroom 1',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              height: 20 / 12,
              color: brandBrown,
            ),
          ),
          SizedBox(
            height: 3,
          ),
          Text(
            'King size',
            style: TextStyle(
              fontSize: 10,
              height: 18 / 10,
              color: Color(0xffa1a0a6),
            ),
          ),
        ],
      ),
    );
  }
}
