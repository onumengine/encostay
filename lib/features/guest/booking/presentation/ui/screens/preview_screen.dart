import 'dart:io';

import 'package:encostay/core/utilities/color_palette.dart';
import 'package:encostay/core/utilities/constants.dart';
import 'package:encostay/core/utilities/route_names.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rounded_date_picker/flutter_rounded_date_picker.dart';
import 'package:flutter_svg/svg.dart';

class PreviewScreen extends StatefulWidget {
  const PreviewScreen({Key? key}) : super(key: key);

  @override
  _PreviewScreenState createState() => _PreviewScreenState();
}

class _PreviewScreenState extends State<PreviewScreen> {
  DateTime? checkInDate, checkOutDate;
  final Map<int, String> numberToMonth = <int, String>{
    1: 'Jan',
    2: 'Feb',
    3: 'Mar',
    4: 'Apr',
    5: 'May',
    6: 'Jun',
    7: 'Jul',
    8: 'Aug',
    9: 'Sep',
    10: 'Oct',
    11: 'Nov',
    12: 'Dec',
  };

  @override
  void initState() {
    super.initState();
    checkInDate = DateTime.now();
    checkOutDate = DateTime.now();
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: ColorPalette.brandWhite,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: ColorPalette.brandWhite,
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: (Icon(
            (Platform.isIOS)
                ? Icons.arrow_back_ios_rounded
                : Icons.arrow_back_rounded,
            color: ColorPalette.brandBrown,
          )),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(
              Icons.close,
              color: ColorPalette.brandBrown,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 23),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      IMAGES_PATH + 'apartment.png',
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
                          SvgPicture.asset(
                            COLORED_VECTORS_PATH + 'ic_rating.svg',
                            width: 14,
                          ),
                          SizedBox(
                            width: 7,
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
                            color: ColorPalette.lightTextColor,
                          ),
                        ),
                        SizedBox(height: 10),
                        GestureDetector(
                          onTap: () async {
                            try {
                              await showRoundedDatePicker(
                                context: context,
                                styleDatePicker: MaterialRoundedDatePickerStyle(
                                  backgroundHeader: ColorPalette.brandOrange,
                                  backgroundActionBar: ColorPalette.brandOrange,
                                  textStyleButtonPositive:
                                      TextStyle(color: ColorPalette.brandWhite),
                                  textStyleButtonNegative:
                                      TextStyle(color: ColorPalette.brandWhite),
                                  paddingMonthHeader: EdgeInsets.only(top: 12),
                                  decorationDateSelected: BoxDecoration(
                                    borderRadius: BorderRadius.circular(14),
                                    color: ColorPalette.brandOrange,
                                    shape: BoxShape.rectangle,
                                  ),
                                ),
                                onTapDay: (date, isSelected) {
                                  setState(() {
                                    checkInDate = date;
                                  });
                                  return isSelected;
                                },
                                initialDate: DateTime.now(),
                                height: 300,
                              );
                            } on Exception catch (error) {
                              showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                  title: Text('Error'),
                                  content: Text(error.toString()),
                                ),
                              );
                            }
                          },
                          child: PhysicalModel(
                            color: Color(0x7000000),
                            shadowColor: Colors.black,
                            elevation: 3,
                            borderRadius: BorderRadius.circular(10),
                            child: Container(
                              padding: EdgeInsets.fromLTRB(12, 6, 0, 5),
                              decoration: BoxDecoration(
                                  color: ColorPalette.brandWhite,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    '${numberToMonth[checkInDate?.month]} ${checkInDate?.day}',
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
                          'Checkout',
                          style: TextStyle(
                            fontSize: 12,
                            height: 22 / 12,
                            color: ColorPalette.lightTextColor,
                          ),
                        ),
                        SizedBox(height: 10),
                        GestureDetector(
                          onTap: () async {
                            try {
                              await showRoundedDatePicker(
                                context: context,
                                styleDatePicker: MaterialRoundedDatePickerStyle(
                                  backgroundHeader: ColorPalette.brandOrange,
                                  backgroundActionBar: ColorPalette.brandOrange,
                                  textStyleButtonPositive:
                                      TextStyle(color: ColorPalette.brandWhite),
                                  textStyleButtonNegative:
                                      TextStyle(color: ColorPalette.brandWhite),
                                  paddingMonthHeader: EdgeInsets.only(top: 12),
                                  decorationDateSelected: BoxDecoration(
                                    borderRadius: BorderRadius.circular(14),
                                    color: ColorPalette.brandOrange,
                                    shape: BoxShape.rectangle,
                                  ),
                                ),
                                onTapDay: (date, isSelected) {
                                  setState(() {
                                    checkOutDate = date;
                                  });
                                  return isSelected;
                                },
                                initialDate: DateTime.now(),
                                height: 300,
                              );
                            } on Exception catch (error) {
                              showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                  title: Text('Error'),
                                  content: Text(error.toString()),
                                ),
                              );
                            }
                          },
                          child: PhysicalModel(
                            color: Color(0x7000000),
                            shadowColor: Colors.black,
                            elevation: 3,
                            borderRadius: BorderRadius.circular(10),
                            child: Container(
                              padding: EdgeInsets.fromLTRB(12, 6, 0, 5),
                              decoration: BoxDecoration(
                                  color: ColorPalette.brandWhite,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    '${numberToMonth[checkOutDate?.month]} ${checkOutDate?.day}',
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
                            color: ColorPalette.lightTextColor,
                          ),
                        ),
                        SizedBox(height: 10),
                        Container(
                          padding: EdgeInsets.fromLTRB(0, 6, 0, 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              SvgPicture.asset(
                                ORANGE_VECTORS_PATH + 'ic_guest.svg',
                                width: 14.44,
                                height: 14.29,
                              ),
                              SizedBox(
                                width: 4,
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
              SizedBox(height: screenSize.height / 39),
              Container(
                padding: EdgeInsets.symmetric(vertical: 30, horizontal: 24),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: ColorPalette.brandLight,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Fee & Tax Details',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        height: 23 / 14,
                        color: ColorPalette.lightTextColor,
                      ),
                    ),
                    SizedBox(height: screenSize.height / 36.9),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          '\$172 x 3 nights',
                          style: TextStyle(
                            fontSize: 12,
                            height: 22 / 12,
                            color: ColorPalette.lightTextColor,
                          ),
                        ),
                        Text(
                          '\$516',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            height: 20 / 12,
                            color: ColorPalette.lightTextColor,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: screenSize.height / 54.13),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Service charges',
                          style: TextStyle(
                            fontSize: 12,
                            height: 22 / 12,
                            color: ColorPalette.lightTextColor,
                          ),
                        ),
                        Text(
                          '\$15',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            height: 20 / 12,
                            color: ColorPalette.lightTextColor,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: screenSize.height / 34.55),
                    Divider(
                      color: ColorPalette.brandYellow,
                      thickness: 1,
                    ),
                    SizedBox(height: screenSize.height / 36.09),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Total',
                          style: TextStyle(
                            height: 25 / 14,
                          ),
                        ),
                        PhysicalModel(
                          color: Color(0x7000000),
                          shadowColor: ColorPalette.brandBrown,
                          elevation: 3,
                          borderRadius: BorderRadius.circular(7),
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 5, horizontal: 22),
                            decoration: BoxDecoration(
                              color: ColorPalette.brandWhite,
                              borderRadius: BorderRadius.circular(7),
                            ),
                            child: Text(
                              '\$524',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                height: 30 / 18,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                child: SizedBox(),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed(RouteNames.BOOKING);
                },
                child: Container(
                  constraints: BoxConstraints(maxWidth: screenSize.width / 2.5),
                  padding: EdgeInsets.symmetric(vertical: 17, horizontal: 24),
                  decoration: BoxDecoration(
                    color: ColorPalette.brandBrown,
                    borderRadius: BorderRadius.circular(26.5),
                  ),
                  child: Center(
                    child: Text(
                      'Reserve',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        height: 19.5 / 16,
                        color: ColorPalette.brandWhite,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: screenSize.height / 16.24,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
