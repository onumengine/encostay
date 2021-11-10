import 'package:encostay/core/utilities/colors.dart';
import 'package:flutter/material.dart';

class AddNewListingCard extends StatelessWidget {
  const AddNewListingCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 18, horizontal: 20),
      padding: EdgeInsets.symmetric(vertical: 14, horizontal: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: ColorPalette.brandWhite,
      ),
      child: ListTile(
        leading: Container(
          height: 58,
          width: 66,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(11),
            color: brandBrown.withOpacity(0.1),
          ),
          child: Icon(
            Icons.add,
            color: ColorPalette.brandOrange,
          ),
        ),
        title: Text(
          'Add new listing',
          style: TextStyle(
            fontSize: 11,
            fontWeight: FontWeight.w600,
            height: 23 / 11,
          ),
        ),
        subtitle: Text(
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi nisl urna amet elementum proin nunc',
          style: TextStyle(
            fontSize: 9,
            height: 10.97 / 9,
            color: ColorPalette.paleHostGrey,
          ),
        ),
        contentPadding: EdgeInsets.zero,
        dense: true,
      ),
    );
  }
}
