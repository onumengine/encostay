import 'dart:io';

import 'package:encostay/ui/atoms/custom_tab_indicator.dart';
import 'package:encostay/ui/molecules/booking_status_modal.dart';
import 'package:encostay/ui/organisms/confirm_phone_number.dart';
import 'package:encostay/ui/organisms/host_chat.dart';
import 'package:encostay/ui/organisms/upload_id.dart';
import 'package:encostay/utilities/colors.dart';
import 'package:encostay/utilities/constants.dart';
import 'package:flutter/material.dart';

class BookingStatusScreen extends StatefulWidget {
  const BookingStatusScreen({Key? key}) : super(key: key);

  @override
  _BookingStatusScreenState createState() => _BookingStatusScreenState();
}

class _BookingStatusScreenState extends State<BookingStatusScreen> {
  List<CustomTabIndicator>? _tabIndicators;

  @override
  void initState() {
    super.initState();
    _tabIndicators = [
      CustomTabIndicator.withValue(isSelected: true, index: 1),
      CustomTabIndicator(index: 2),
      CustomTabIndicator(index: 3),
      CustomTabIndicator(index: 4),
      CustomTabIndicator(index: 5),
    ];
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        backgroundColor: brandWhite,
        extendBody: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(
              (Platform.isIOS)
                  ? Icons.arrow_back_ios_rounded
                  : Icons.arrow_back_rounded,
              color: brandBrown,
            ),
          ),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(kToolbarHeight),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: TabBar(
                onTap: (index) {
                  setState(() {
                    /// store the tab children in an array,
                    /// store the tab labels in variables
                    /// change the color and label of the selected tab when it is tapped
                    _tabIndicators!.forEach((tabIndicator) {});
                  });
                },
                unselectedLabelColor: brandBrown,
                indicatorColor: brandOrange,
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(17),
                  color: brandOrange,
                ),
                tabs: _tabIndicators!
                    .map((tabIndicator) => Tab(
                          child: tabIndicator,
                        ))
                    .toList(),
              ),
            ),
          ),
        ),
        body: TabBarView(children: [
          Container(
            child: Stack(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: ListView(
                    children: <Widget>[
                      SizedBox(
                        height: 42,
                      ),
                      Text(
                        'Book your stay',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          height: 34 / 24,
                        ),
                      ),
                      SizedBox(height: 9),
                      Container(
                        height: 97,
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Color(0xfff8f9f9),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                            bottomLeft: Radius.circular(20),
                          ),
                        ),
                        child: Text(
                          'People are eyening this place. Over the last week, 400 others have checked it out for the same dates.',
                          style: TextStyle(
                            fontSize: 12,
                            height: 22 / 12,
                            color: Color(0xffa1a0a6),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 22,
                      ),
                      Text(
                        '3 nights in Perfect Room',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          height: 30 / 18,
                          color: brandBrown,
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(13),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(26),
                              color: Color(0xffe2f4f3),
                            ),
                            child: Column(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 15, horizontal: 19.5),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: brandWhite,
                                  ),
                                  child: Center(
                                    child: Column(
                                      children: [
                                        Text(
                                          'Jan',
                                          style: TextStyle(
                                            fontSize: 14,
                                            height: 17.07 / 14,
                                            color: paleTextColor,
                                          ),
                                        ),
                                        Text(
                                          '3',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            height: 19.5 / 16,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 21,
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 15, horizontal: 19.5),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: brandWhite,
                                  ),
                                  child: Center(
                                    child: Column(
                                      children: [
                                        Text(
                                          'Jan',
                                          style: TextStyle(
                                            fontSize: 14,
                                            height: 17.07 / 14,
                                            color: paleTextColor,
                                          ),
                                        ),
                                        Text(
                                          '7',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            height: 19.5 / 16,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: screenSize.width / 12.93,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Friday check in',
                                    style: TextStyle(
                                      height: 25 / 14,
                                      color: paleTextColor,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 2,
                                  ),
                                  Text(
                                    '1PM - 7PM',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      height: 23 / 14,
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 34,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Tuesday check out',
                                    style: TextStyle(
                                      height: 25 / 14,
                                      color: paleTextColor,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 2,
                                  ),
                                  Text(
                                    '1PM - 7PM',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      height: 23 / 14,
                                    ),
                                  )
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 22,
                      ),
                      Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 21, horizontal: 24) +
                                EdgeInsets.only(bottom: 47),
                        decoration: BoxDecoration(
                          color: brandLight,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  'Things to keep in mind',
                                  style: TextStyle(
                                    height: 25 / 14,
                                    color: lightTextColor,
                                  ),
                                ),
                                Icon(Icons.keyboard_arrow_up),
                              ],
                            ),
                            SizedBox(
                              height: 14,
                            ),
                            Row(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.all(11),
                                  decoration: BoxDecoration(
                                    color: brandWhite,
                                    borderRadius: BorderRadius.circular(15),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color(0x7000000),
                                        offset: Offset(0, 3),
                                        blurRadius: 6,
                                      ),
                                    ],
                                  ),
                                  child: ImageIcon(
                                    AssetImage(
                                        ASSET_IMAGE_PATH + 'shield_icon.png'),
                                    color: brandOrange,
                                  ),
                                ),
                                SizedBox(
                                  width: 14,
                                ),
                                Text(
                                  'It is not allowed to take guns',
                                  style: TextStyle(
                                    fontSize: 12,
                                    height: 22 / 12,
                                    color: lightTextColor,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Row(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.all(11),
                                  decoration: BoxDecoration(
                                    color: brandWhite,
                                    borderRadius: BorderRadius.circular(15),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color(0x7000000),
                                        offset: Offset(0, 3),
                                        blurRadius: 6,
                                      ),
                                    ],
                                  ),
                                  child: ImageIcon(
                                    AssetImage(
                                        ASSET_IMAGE_PATH + 'shield_icon.png'),
                                    color: brandOrange,
                                  ),
                                ),
                                SizedBox(
                                  width: 14,
                                ),
                                Text(
                                  'It is not allowed to take guns',
                                  style: TextStyle(
                                    fontSize: 12,
                                    height: 22 / 12,
                                    color: lightTextColor,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Row(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.all(11),
                                  decoration: BoxDecoration(
                                    color: brandWhite,
                                    borderRadius: BorderRadius.circular(15),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color(0x7000000),
                                        offset: Offset(0, 3),
                                        blurRadius: 6,
                                      ),
                                    ],
                                  ),
                                  child: ImageIcon(
                                    AssetImage(
                                        ASSET_IMAGE_PATH + 'shield_icon.png'),
                                    color: brandOrange,
                                  ),
                                ),
                                SizedBox(
                                  width: 14,
                                ),
                                Text(
                                  'It is not allowed to take guns',
                                  style: TextStyle(
                                    fontSize: 12,
                                    height: 22 / 12,
                                    color: lightTextColor,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 142,
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 42,
                  child: Container(
                    width: screenSize.width,
                    padding: EdgeInsets.only(left: 38, right: 22) +
                        EdgeInsets.symmetric(vertical: 22),
                    decoration: BoxDecoration(
                      color: brandWhite,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(48.5),
                        topRight: Radius.circular(48.5),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xffdde0e8),
                          blurRadius: 33,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        RichText(
                          text: TextSpan(
                            style: TextStyle(
                              height: 25 / 14,
                              color: paleTextColor,
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                text: '\$524',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  height: 30 / 18,
                                  color: lightTextColor,
                                ),
                              ),
                              TextSpan(text: '  for 3 nights'),
                            ],
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            showModalBottomSheet(
                              context: context,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(25),
                                  topRight: Radius.circular(25),
                                ),
                              ),
                              builder: (context) => BookingStatusModal(),
                              isScrollControlled: true,
                            );
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 17, horizontal: 24),
                            decoration: BoxDecoration(
                              color: brandBrown,
                              borderRadius: BorderRadius.circular(26.5),
                            ),
                            child: Text(
                              'Agree',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                height: 19.5 / 16,
                                color: brandWhite,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          HostChatComponent(),
          ConfirmPhoneNumberComponent(),
          UploadIDComponent(),
          Container(),
        ]),
      ),
    );
  }
}