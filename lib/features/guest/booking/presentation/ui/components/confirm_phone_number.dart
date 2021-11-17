import 'package:encostay/features/guest/booking/presentation/logic_holders/blocs/booking_bloc.dart';
import 'package:encostay/features/guest/booking/presentation/logic_holders/events/booking_event.dart';
import 'package:encostay/core/utilities/colors.dart';
import 'package:encostay/core/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:otp_text_field/otp_field.dart';

class ConfirmPhoneNumberComponent extends StatefulWidget {
  const ConfirmPhoneNumberComponent({Key? key}) : super(key: key);

  @override
  _ConfirmPhoneNumberComponentState createState() =>
      _ConfirmPhoneNumberComponentState();
}

class _ConfirmPhoneNumberComponentState
    extends State<ConfirmPhoneNumberComponent> {
  late BookingBloc _bookingViewModel;

  @override
  void initState() {
    super.initState();
    _bookingViewModel = BlocProvider.of<BookingBloc>(context);
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 42,
          ),
          Align(
            alignment: AlignmentDirectional.centerStart,
            child: Text(
              'Confirm your phone number',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                height: 34 / 24,
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            padding: EdgeInsets.all(24) + EdgeInsets.only(right: 66),
            decoration: BoxDecoration(
              color: brandWhite,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 3),
                  blurRadius: 15,
                  color: Color(0x7000000),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Phone Number',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    height: 20 / 12,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    SvgPicture.asset(
                        COLORED_VECTORS_PATH + 'ic_nigeria_flag.svg'),
                    SizedBox(
                      width: 8,
                    ),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: '070x xxx xxxx',
                        ),
                        keyboardType: TextInputType.phone,
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
              _bookingViewModel.add(TabSelectionEvent(selectedTabIndex: 3));
            },
            child: Container(
              constraints: BoxConstraints(maxWidth: screenSize.width / 2.5),
              padding: EdgeInsets.symmetric(vertical: 17, horizontal: 24),
              decoration: BoxDecoration(
                color: brandBrown,
                borderRadius: BorderRadius.circular(26.5),
              ),
              child: Center(
                child: Text(
                  'Confirm',
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
          SizedBox(
            height: screenSize.height / 16.24,
          ),
        ],
      ),
    );
  }
}
