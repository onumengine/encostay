import 'package:encostay/blocs/booking_status/bloc.dart';
import 'package:encostay/blocs/booking_status/state.dart';
import 'package:encostay/ui/molecules/card_selection_dialog.dart';
import 'package:encostay/ui/screens/booking_status_screen.dart';
import 'package:encostay/utilities/colors.dart';
import 'package:encostay/utilities/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rounded_date_picker/flutter_rounded_date_picker.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ReviewComponent extends StatefulWidget {
  const ReviewComponent({Key? key}) : super(key: key);

  @override
  _ReviewComponentState createState() => _ReviewComponentState();
}

class _ReviewComponentState extends State<ReviewComponent> {
  DateTime? _checkInDate, _checkOutDate;
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
    _checkInDate = DateTime.now();
    _checkOutDate = DateTime.now();
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 39, bottom: 23),
            child: Text(
              'Review and pay',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                height: 34 / 24,
              ),
            ),
          ),
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
          SizedBox(height: 31),
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
                                _checkInDate = date;
                              });
                              return isSelected;
                            },
                            initialDate: _checkInDate,
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
                                '${numberToMonth[_checkInDate?.month]} ${_checkInDate?.day}',
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
                        color: lightTextColor,
                      ),
                    ),
                    SizedBox(height: 10),
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
                                _checkOutDate = date;
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
                                '${numberToMonth[_checkOutDate?.month]} ${_checkOutDate?.day}',
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
          SizedBox(height: 45),
          Text(
            'Cards',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              height: 30 / 18,
              color: lightTextColor,
            ),
          ),
          SizedBox(height: 19),
          GestureDetector(
            onTap: () {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  content: CardSelectionDialog(),
                  title: Center(
                    child: Text('Select Card'),
                  ),
                  titleTextStyle: TextStyle(
                    fontSize: 13,
                    height: 19.5 / 13,
                    color: Color(0xff4e4e4e),
                  ),
                  scrollable: true,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              );
            },
            child: Container(
              padding: EdgeInsets.all(14),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: brandLightGreen,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 64.64,
                    height: 44,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x11709897),
                          offset: Offset(1, 3),
                          blurRadius: 15,
                        )
                      ],
                    ),
                    child: SvgPicture.asset(
                      VECTOR_IMAGES_PATH + 'card.svg',
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  SizedBox(width: 19.76),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Travel card',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          height: 23 / 14,
                          color: lightTextColor,
                        ),
                      ),
                      Text(
                        'Mastercard - 5647',
                        style: TextStyle(
                          fontSize: 12,
                          height: 22 / 12,
                          color: paleTextColor,
                        ),
                      ),
                    ],
                  ),
                  Expanded(child: SizedBox()),
                  Icon(Icons.keyboard_arrow_right),
                ],
              ),
            ),
          ),
          SizedBox(height: 8),
          Container(
            padding: EdgeInsets.all(14),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: paleTextColor.withOpacity(0.1)),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: 44,
                  width: 64.24,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(11),
                    color: paleTextColor.withOpacity(0.1),
                  ),
                  child: Icon(Icons.add),
                ),
                SizedBox(
                  width: 19.76,
                ),
                Text(
                  'Add payment',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    height: 23 / 14,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 32),
          Divider(
            thickness: 1,
            color: Color(0xffdde0e8),
          ),
          SizedBox(height: 32),
          Container(
            padding: EdgeInsets.symmetric(vertical: 30, horizontal: 24),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: brandLight,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Fee & Tax Details',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    height: 23 / 14,
                    color: lightTextColor,
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
                        color: lightTextColor,
                      ),
                    ),
                    Text(
                      '\$516',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        height: 20 / 12,
                        color: lightTextColor,
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
                        color: lightTextColor,
                      ),
                    ),
                    Text(
                      '\$15',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        height: 20 / 12,
                        color: lightTextColor,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: screenSize.height / 34.55),
                Divider(
                  color: brandYellow,
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
                      shadowColor: brandBrown,
                      elevation: 3,
                      borderRadius: BorderRadius.circular(7),
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 5, horizontal: 22),
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
              ],
            ),
          ),
          SizedBox(
            height: 52,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 78),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => BlocProvider<BookingBloc>(
                      create: (context) => BookingBloc(
                        DefaultBookingState(progressIndex: 0),
                      ),
                      child: BookingStatusScreen(),
                    ),
                  ),
                );
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 17, horizontal: 24),
                width: screenSize.width / 2.5,
                decoration: BoxDecoration(
                  color: brandBrown,
                  borderRadius: BorderRadius.circular(26.5),
                ),
                child: Center(
                  child: Text(
                    'Reserve',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      height: 19.5 / 16,
                      color: brandWhite,
                    ),
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
    );
  }
}
