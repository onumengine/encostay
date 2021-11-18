import 'package:encostay/core/widgets/atoms/brand_button.dart';
import 'package:encostay/core/utilities/color_palette.dart';
import 'package:flutter/material.dart';

class ConfirmCancellationDialog extends StatelessWidget {
  const ConfirmCancellationDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Align(
            alignment: AlignmentDirectional.centerStart,
            child: Text(
              'Perfect Room, East Village Dream',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                height: 30 / 18,
              ),
            ),
          ),
          SizedBox(
            height: 32,
          ),
          Container(
            padding: EdgeInsets.all(24) + EdgeInsets.only(top: 3, bottom: 27),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: ColorPalette.brandLight,
            ),
            child: Column(
              children: <Widget>[
                Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: Text(
                    'Cancellation cost',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      height: 23 / 14,
                      color: ColorPalette.lightTextColor,
                    ),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Room',
                      style: TextStyle(
                        height: 25 / 14,
                        color: ColorPalette.lightTextColor,
                      ),
                    ),
                    Text(
                      'free',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        height: 23 / 14,
                        color: ColorPalette.lightTextColor,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Service charges',
                      style: TextStyle(
                        height: 25 / 14,
                        color: ColorPalette.lightTextColor,
                      ),
                    ),
                    Text(
                      '\$15',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        height: 23 / 14,
                        color: ColorPalette.lightTextColor,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 18,
                ),
                Divider(
                  thickness: 1,
                  color: Color(0xffffd7d0),
                ),
                SizedBox(
                  height: 21,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Total',
                      style: TextStyle(
                        color: ColorPalette.lightTextColor,
                      ),
                    ),
                    PhysicalModel(
                      color: Color(0x7000000),
                      shadowColor: Colors.black,
                      elevation: 3,
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        width: 86,
                        height: 40,
                        decoration: BoxDecoration(
                            color: ColorPalette.brandWhite,
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child: Text(
                            '\$15',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
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
            height: 24,
          ),
          Row(
            children: [
              Expanded(
                child: BrandButton(
                  child: Text(
                    'Close',
                    style: TextStyle(
                      fontSize: 12,
                      height: 22 / 12,
                      color: ColorPalette.lightTextColor,
                    ),
                  ),
                  onTap: () {},
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xffe3e5ed),
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              SizedBox(
                width: 8,
              ),
              Expanded(
                child: BrandButton(
                  child: Text(
                    'Confirm',
                    style: TextStyle(
                      fontSize: 12,
                      height: 22 / 12,
                      color: ColorPalette.brandWhite,
                    ),
                  ),
                  onTap: () {},
                  color: ColorPalette.brandBrown,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
