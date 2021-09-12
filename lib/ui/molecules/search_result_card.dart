import 'package:encostay/utilities/colors.dart';
import 'package:flutter/material.dart';

class SearchResultCard extends StatefulWidget {
  const SearchResultCard({Key? key}) : super(key: key);

  @override
  _SearchResultCardState createState() => _SearchResultCardState();
}

class _SearchResultCardState extends State<SearchResultCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 321,
      width: double.maxFinite,
      padding: EdgeInsets.fromLTRB(17, 14, 15, 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: brandBrown,
      ),
    );
  }
}
