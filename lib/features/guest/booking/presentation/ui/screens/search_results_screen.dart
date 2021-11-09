import 'dart:io';

import 'package:encostay/core/widgets/atoms/filters_button.dart';
import 'package:encostay/core/widgets/atoms/search_box.dart';
import 'package:encostay/core/widgets/molecules/search_result_card.dart';
import 'package:encostay/core/utilities/colors.dart';
import 'package:encostay/core/widgets/organisms/custom_bottom_navbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchResultsScreen extends StatefulWidget {
  SearchResultsScreen({Key? key}) : super(key: key);

  @override
  _SearchResultsScreenState createState() => _SearchResultsScreenState();
}

class _SearchResultsScreenState extends State<SearchResultsScreen> {
  TextEditingController _controller = TextEditingController();
  int _navbarIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: brandSecondBackground,
      extendBody: true,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        leading: IconButton(
          icon: Icon(
            Platform.isIOS ? CupertinoIcons.back : Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Container(
          height: 47,
          decoration: BoxDecoration(
            color: brandWhite,
            borderRadius: BorderRadius.all(
              Radius.circular(13),
            ),
            boxShadow: [
              BoxShadow(
                color: brandTextInputShadow.withOpacity(0.13),
              ),
              BoxShadow(
                color: brandTextInputShadow.withOpacity(0.13),
              ),
              BoxShadow(
                color: brandTextInputShadow.withOpacity(0.13),
              ),
              BoxShadow(
                color: brandTextInputShadow.withOpacity(0.13),
              ),
            ],
          ),
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              prefixIcon: ImageIcon(
                AssetImage('lib/assets/images/search_icon.png'),
                size: 24,
                color: Color(0xffd8d8d8),
              ),
            ),
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.only(left: 18, right: 25),
          children: <Widget>[
            Row(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Row(
                  children: <Widget>[],
                ),
                FiltersButton(
                  backgroundColor: brandWhite,
                  foregroundColor: brandBrown,
                ),
              ],
            ),
            Align(
              alignment: AlignmentDirectional.centerStart,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 14),
                child: Text(
                  '200+ places to stay',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    height: 23 / 14,
                  ),
                ),
              ),
            ),
            SearchResultCard(),
            SizedBox(height: 9),
            SearchResultCard(),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavbar(onTap: (index) {
        // TODO: implement bottom navbar click function
      }),
    );
  }
}
