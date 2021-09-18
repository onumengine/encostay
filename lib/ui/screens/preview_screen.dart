import 'dart:io';

import 'package:encostay/utilities/colors.dart';
import 'package:encostay/utilities/constants.dart';
import 'package:flutter/material.dart';

class PreviewScreen extends StatefulWidget {
  const PreviewScreen({Key? key}) : super(key: key);

  @override
  _PreviewScreenState createState() => _PreviewScreenState();
}

class _PreviewScreenState extends State<PreviewScreen> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: brandWhite,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: brandWhite,
        elevation: 0,
        leading: (Icon(
          (Platform.isIOS)
              ? Icons.arrow_back_ios_rounded
              : Icons.arrow_back_rounded,
          color: brandBrown,
        )),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(
              Icons.close,
              color: brandBrown,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 23),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      ASSET_IMAGE_PATH + 'apartment_2.png',
                      height: 93,
                      width: 81,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                  SizedBox(
                    width: 33,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Perfect Room, East...',
                        style: TextStyle(
                          height: 25 / 14,
                          color: Color(0xff2f2f2f),
                        ),
                      ),
                      Text(
                        '\$172/night',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          height: 30 / 18,
                          color: Color(0xff2f2f2f),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          ImageIcon(
                            AssetImage('lib/assets/images/rating_icon.png'),
                            color: brandYellow,
                            size: 24,
                          ),
                          Text(
                            '4.8',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              height: 23 / 14,
                              color: Color(0xff2f2f2f),
                            ),
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Text(
                            '(245)',
                            style: TextStyle(
                              fontSize: 12,
                              height: 22 / 12,
                              color: Color(0xffa1a0a6),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: screenSize.height / 26.19),
              Container(
                padding:
                    EdgeInsets.only(left: 18, top: 22, bottom: 16, right: 69.5),
                decoration: BoxDecoration(
                  color: Color(0xfff8f9f9),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Check In',
                          style: TextStyle(
                            fontSize: 12,
                            height: 22 / 12,
                            color: lightTextColor,
                          ),
                        ),
                        SizedBox(height: 10),
                        PhysicalModel(
                          color: Color(0x7000000),
                          shadowColor: Colors.black,
                          elevation: 3,
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            padding: EdgeInsets.fromLTRB(12, 6, 0, 5),
                            decoration: BoxDecoration(
                                color: brandWhite,
                                borderRadius: BorderRadius.circular(10)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  'Jan 3',
                                  style: TextStyle(
                                    fontSize: 12,
                                    height: 22 / 12,
                                  ),
                                ),
                                SizedBox(
                                  width: 14,
                                ),
                                Icon(Icons.arrow_forward_ios_rounded),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      child: SizedBox(),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Check In',
                          style: TextStyle(
                            fontSize: 12,
                            height: 22 / 12,
                            color: lightTextColor,
                          ),
                        ),
                        SizedBox(height: 10),
                        PhysicalModel(
                          color: Color(0x7000000),
                          shadowColor: Colors.black,
                          elevation: 3,
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            padding: EdgeInsets.fromLTRB(12, 6, 0, 5),
                            decoration: BoxDecoration(
                                color: brandWhite,
                                borderRadius: BorderRadius.circular(10)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  'Jan 3',
                                  style: TextStyle(
                                    fontSize: 12,
                                    height: 22 / 12,
                                  ),
                                ),
                                SizedBox(
                                  width: 14,
                                ),
                                Icon(Icons.arrow_forward_ios_rounded),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      child: SizedBox(),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Guests',
                          style: TextStyle(
                            fontSize: 12,
                            height: 22 / 12,
                            color: lightTextColor,
                          ),
                        ),
                        SizedBox(height: 10),
                        Container(
                          padding: EdgeInsets.fromLTRB(0, 6, 0, 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              ImageIcon(
                                AssetImage(ASSET_IMAGE_PATH + 'user_icon.png'),
                                color: brandYellow,
                                size: 24,
                              ),
                              Text(
                                '1',
                                style: TextStyle(
                                  fontSize: 12,
                                  height: 22 / 12,
                                  color: Color(0xff2f2f2f),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
