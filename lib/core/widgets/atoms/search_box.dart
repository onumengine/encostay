import 'package:encostay/core/widgets/atoms/filters_button.dart';
import 'package:encostay/core/utilities/color_palette.dart';
import 'package:flutter/material.dart';

class SearchBox extends StatelessWidget {
  final TextEditingController? controller;
  final void Function(String)? searchFunction;

  SearchBox({
    Key? key,
    required this.controller,
    this.searchFunction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 47,
      decoration: BoxDecoration(
        color: ColorPalette.brandWhite,
        borderRadius: BorderRadius.all(
          Radius.circular(13),
        ),
        boxShadow: [
          BoxShadow(
            color: ColorPalette.brandTextInputShadow.withOpacity(0.13),
            offset: Offset(0, 10),
            blurRadius: 75,
          ),
        ],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: ImageIcon(
              AssetImage('lib/assets/images/search_icon.png'),
              size: 24,
              color: Color(0xffd8d8d8),
            ),
          ),
          Expanded(
            child: TextField(
              decoration: InputDecoration.collapsed(
                hintText: 'Search',
                hintStyle: TextStyle(
                  color: Color(0xffd8d8d8),
                ),
              ),
              onSubmitted: searchFunction,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            child: FiltersButton(),
          ),
        ],
      ),
    );
  }
}
