import 'package:encostay/core/utilities/colors.dart';
import 'package:encostay/core/utilities/constants.dart';
import 'package:encostay/core/utilities/route_names.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rounded_date_picker/flutter_rounded_date_picker.dart';
import 'package:flutter_svg/svg.dart';

class CancellationScreen extends StatefulWidget {
  const CancellationScreen({Key? key}) : super(key: key);

  @override
  _CancellationScreenState createState() => _CancellationScreenState();
}

class _CancellationScreenState extends State<CancellationScreen> {
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
      backgroundColor: brandWhite,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        centerTitle: true,
        title: Text('Manage Booking'),
        backgroundColor: brandWhite,
        elevation: 0,
        foregroundColor: lightTextColor,
        titleTextStyle: TextStyle(
          fontWeight: FontWeight.w500,
          height: 23 / 14,
          color: lightTextColor,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: <Widget>[
            SizedBox(height: 30),
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
            SizedBox(height: screenSize.height / 20.82),
            Container(
              padding: EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: redBgColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Details',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          height: 30 / 18,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 19),
                  Text(
                    'Check In',
                    style: TextStyle(
                      fontSize: 12,
                      height: 22 / 12,
                      color: lightTextColor,
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () async {
                          try {
                            await showRoundedDatePicker(
                              context: context,
                              styleDatePicker: MaterialRoundedDatePickerStyle(
                                backgroundHeader: brandOrange,
                                backgroundActionBar: brandOrange,
                                textStyleButtonPositive:
                                    TextStyle(color: brandWhite),
                                textStyleButtonNegative:
                                    TextStyle(color: brandWhite),
                                paddingMonthHeader: EdgeInsets.only(top: 12),
                                decorationDateSelected: BoxDecoration(
                                  borderRadius: BorderRadius.circular(14),
                                  color: brandOrange,
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
                                color: brandWhite,
                                borderRadius: BorderRadius.circular(10)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                      SizedBox(width: 16),
                      Expanded(
                        child: Text(
                          'from 01:00 PM until 12:00 PM',
                          style: TextStyle(
                            fontSize: 10,
                            height: 18 / 10,
                            color: redTextColor,
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 33,
                    child: Divider(color: redTextColor, thickness: 1),
                  ),
                  Text(
                    'Checkout',
                    style: TextStyle(
                      fontSize: 12,
                      height: 22 / 12,
                      color: lightTextColor,
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () async {
                          try {
                            await showRoundedDatePicker(
                              context: context,
                              styleDatePicker: MaterialRoundedDatePickerStyle(
                                backgroundHeader: brandOrange,
                                backgroundActionBar: brandOrange,
                                textStyleButtonPositive:
                                    TextStyle(color: brandWhite),
                                textStyleButtonNegative:
                                    TextStyle(color: brandWhite),
                                paddingMonthHeader: EdgeInsets.only(top: 12),
                                decorationDateSelected: BoxDecoration(
                                  borderRadius: BorderRadius.circular(14),
                                  color: brandOrange,
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
                            width: 85,
                            padding: EdgeInsets.fromLTRB(12, 6, 0, 5),
                            decoration: BoxDecoration(
                                color: brandWhite,
                                borderRadius: BorderRadius.circular(10)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                      SizedBox(
                        width: 16,
                      ),
                      Text(
                        'until 12:00 PM',
                        style: TextStyle(
                          fontSize: 10,
                          height: 18 / 10,
                          color: redTextColor,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: screenSize.height / 20.3),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Total',
                  style: TextStyle(
                    height: 25 / 14,
                    color: lightTextColor,
                  ),
                ),
                PhysicalModel(
                  color: Color(0x7000000),
                  shadowColor: brandBrown,
                  elevation: 3,
                  borderRadius: BorderRadius.circular(7),
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 22),
                    decoration: BoxDecoration(
                      color: brandWhite,
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
            Expanded(
              child: SizedBox(),
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(29),
                      border: Border.all(
                        color: paleTextColor.withOpacity(0.3),
                      ),
                    ),
                    child: Material(
                      color: Colors.transparent,
                      child: InkResponse(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        highlightColor: redTextColor,
                        highlightShape: BoxShape.rectangle,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 16, vertical: 18),
                          child: Center(
                            child: Text(
                              'Back',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                height: 23 / 14,
                                color: paleTextColor,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 16,
                ),
                Expanded(
                  child: Container(
                    child: Material(
                      color: Colors.transparent,
                      child: InkResponse(
                        onTap: () {
                          Navigator.of(context)
                              .pushNamed(RouteNames.ROUTE_CANCEL_BOOKING);
                        },
                        splashColor: brandOrange,
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 18),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(29),
                            color: brandBrown,
                          ),
                          child: Center(
                            child: Text(
                              'Cancellation',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                height: 23 / 14,
                                color: brandWhite,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 32),
          ],
        ),
      ),
    );
  }
}
