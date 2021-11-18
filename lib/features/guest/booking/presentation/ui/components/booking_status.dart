import 'package:encostay/features/guest/booking/presentation/logic_holders/blocs/booking_bloc.dart';
import 'package:encostay/features/guest/booking/presentation/logic_holders/events/booking_event.dart';
import 'package:encostay/core/widgets/molecules/booking_status_modal.dart';
import 'package:encostay/core/utilities/color_palette.dart';
import 'package:encostay/core/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BookingStatusComponent extends StatefulWidget {
  const BookingStatusComponent({Key? key}) : super(key: key);

  @override
  _BookingStatusComponentState createState() => _BookingStatusComponentState();
}

class _BookingStatusComponentState extends State<BookingStatusComponent> {
  late BookingBloc _bookingViewModel;

  @override
  void initState() {
    super.initState();
    _bookingViewModel = BlocProvider.of<BookingBloc>(context);
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Stack(
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
                padding: EdgeInsets.symmetric(vertical: 21, horizontal: 24) +
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
                          padding: EdgeInsets.symmetric(
                              horizontal: 17, vertical: 15),
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
                          child: SvgPicture.asset(
                            ORANGE_VECTORS_PATH + 'ic_orange_shield.svg',
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
                          padding: EdgeInsets.symmetric(
                              horizontal: 17, vertical: 15),
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
                          child: SvgPicture.asset(
                            ORANGE_VECTORS_PATH + 'ic_orange_shield.svg',
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
                          padding: EdgeInsets.symmetric(
                              horizontal: 17, vertical: 15),
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
                          child: SvgPicture.asset(
                            ORANGE_VECTORS_PATH + 'ic_orange_shield.svg',
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
          bottom: 0,
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
                    _bookingViewModel.add(
                      TabSelectionEvent(selectedTabIndex: 1),
                    );
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 17, horizontal: 24),
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
    );
  }
}
