import 'package:encostay/core/utilities/color_palette.dart';
import 'package:encostay/core/utilities/constants.dart';
import 'package:encostay/core/utilities/text_styles.dart';
import 'package:encostay/core/widgets/atoms/brand_button.dart';
import 'package:encostay/core/widgets/atoms/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

//TODO: Complete the withdraw funds screen
class WithdrawFundsScreen extends StatelessWidget {
  final GlobalKey amountKey = GlobalKey();
  final GlobalKey passwordKey = GlobalKey();
  final TextEditingController amountController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  WithdrawFundsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Withdrawal',
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w500,
            height: 19 / 15,
            letterSpacing: 0.03,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        foregroundColor: ColorPalette.brandBrown,
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 50, horizontal: 20),
        child: PhysicalModel(
          color: ColorPalette.brandWhite,
          borderRadius: BorderRadius.circular(20),
          child: Container(
            child: ListView(
              children: [
                Container(
                  width: screenSize.width,
                  height: 150,
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: ColorPalette.brandWhite,
                  ),
                  child: Stack(
                    alignment: AlignmentDirectional.center,
                    children: [
                      Positioned(
                        bottom: 24,
                        left: 25,
                        child: Container(
                          height: 16,
                          width: 13,
                          color: ColorPalette.brandOrange.withOpacity(0.2),
                        ),
                      ),
                      Positioned(
                        bottom: 22,
                        left: 130,
                        child: Container(
                          height: 32,
                          width: 33.34,
                          color: ColorPalette.brandOrange.withOpacity(0.15),
                        ),
                      ),
                      Positioned(
                        child: SvgPicture.asset(
                            VECTOR_IMAGES_PATH + 'host_earnings.svg'),
                        bottom: 7,
                        right: 18,
                      ),
                      Positioned(
                        child: SvgPicture.asset(
                            VECTORS_ROOT_PATH + 'dots_grid_vertical.svg'),
                        right: 10,
                      ),
                      Positioned(
                        child: SvgPicture.asset(
                            VECTORS_ROOT_PATH + 'dots_grid_horizontal.svg'),
                        bottom: 16,
                        left: 48,
                      ),
                      Positioned(
                        top: 20,
                        left: 23,
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Available Balance',
                                style: TextStyle(
                                  height: 25 / 15,
                                  color: ColorPalette.searchBoxBackgroundColor,
                                ),
                              ),
                              Text(
                                '\$4,568',
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w600,
                                  height: 34 / 24,
                                  color: ColorPalette.searchBoxBackgroundColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 34,
                  child: Divider(),
                ),
                Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20) +
                        EdgeInsets.only(
                            bottom: (screenSize.height / 101.5), left: 14),
                    child: Text(
                      'Amount',
                      style: TextStyle(
                        fontSize: medium14.fontSize,
                        fontWeight: medium14.fontWeight,
                        height: 1.64,
                        color: ColorPalette.brandGreyAlt,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: TextWidget(
                    key: amountKey,
                    hintText: 'Enter your username or E-mail',
                    controller: amountController,
                    color: ColorPalette.textInputBackgroundColor,
                  ),
                ),
                SizedBox(
                  height: 34,
                  child: Divider(),
                ),
                Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20) +
                        EdgeInsets.only(
                            bottom: (screenSize.height / 101.5), left: 14),
                    child: Text(
                      'Password',
                      style: TextStyle(
                        fontSize: medium14.fontSize,
                        fontWeight: medium14.fontWeight,
                        height: 1.64,
                        color: ColorPalette.brandGreyAlt,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: TextWidget.obscured(
                    key: passwordKey,
                    hintText: 'Enter your password',
                    controller: passwordController,
                    color: ColorPalette.textInputBackgroundColor,
                  ),
                ),
                SizedBox(height: 49),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 59),
                  child: BrandButton(
                    child: Text(
                      'Confirm Withdraw',
                      style: TextStyle(
                        fontSize: 15,
                        height: 20 / 15,
                        color: ColorPalette.brandWhite,
                      ),
                    ),
                    onTap: () {},
                    color: ColorPalette.brandOrange,
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 51),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
