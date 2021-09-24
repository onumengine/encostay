import 'package:encostay/utilities/colors.dart';
import 'package:encostay/utilities/constants.dart';
import 'package:flutter/material.dart';
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
  @override
  Widget build(BuildContext context) {
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
        ],
      ),
    );
  }
}
