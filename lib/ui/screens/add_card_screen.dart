import 'package:encostay/ui/atoms/brand_button.dart';
import 'package:encostay/ui/screens/filters_screen.dart';
import 'package:encostay/utilities/colors.dart';
import 'package:encostay/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AddCardScreen extends StatefulWidget {
  const AddCardScreen({Key? key}) : super(key: key);

  @override
  _AddCardScreenState createState() => _AddCardScreenState();
}

class _AddCardScreenState extends State<AddCardScreen> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: screenSize.width,
          height: screenSize.height,
          padding: EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            children: [
              SizedBox(
                height: screenSize.height / 23.2,
              ),
              Text(
                'Add Card',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  height: 30 / 18,
                  color: lightTextColor,
                ),
              ),
              SizedBox(
                height: screenSize.height / 29,
              ),
              Align(
                alignment: AlignmentDirectional.centerStart,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    'Card Name',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      height: 23 / 14,
                      color: brandGreyAlt,
                    ),
                  ),
                ),
              ),
              SizedBox(height: screenSize.height / 116),
              Container(
                padding: EdgeInsets.symmetric(vertical: 9, horizontal: 32),
                height: 43,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(27.5),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 75,
                      color: brandTextInputShadow.withOpacity(0.1),
                    ),
                  ],
                  color: brandWhite,
                ),
                child: Center(
                  child: TextField(
                    keyboardType: TextInputType.name,
                    textCapitalization: TextCapitalization.words,
                    decoration: InputDecoration.collapsed(
                      hintText: 'Card Name',
                    ),
                  ),
                ),
              ),
              SizedBox(height: screenSize.height / 58),
              Align(
                alignment: AlignmentDirectional.centerStart,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    'Card Number',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      height: 23 / 14,
                      color: brandGreyAlt,
                    ),
                  ),
                ),
              ),
              SizedBox(height: screenSize.height / 116),
              Container(
                padding: EdgeInsets.fromLTRB(32, 9, 15, 9),
                height: 43,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(27.5),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 75,
                      color: brandTextInputShadow.withOpacity(0.1),
                    ),
                  ],
                  color: brandWhite,
                ),
                child: Row(
                  children: [
                    Flexible(
                      child: TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration.collapsed(
                          hintText: 'Card Number',
                        ),
                      ),
                    ),
                    SvgPicture.asset(
                      COLORED_VECTORS_PATH + 'ic_mastercard.svg',
                      height: 19.43,
                    ),
                  ],
                ),
              ),
              SizedBox(height: screenSize.height / 45.11),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: <Widget>[
                        Align(
                          alignment: AlignmentDirectional.centerStart,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Text(
                              'Expiry Date',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                height: 23 / 14,
                                color: brandGreyAlt,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: screenSize.height / 101.5),
                        Container(
                          padding:
                              EdgeInsets.symmetric(vertical: 9, horizontal: 32),
                          height: 43,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(27.5),
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(0, 10),
                                blurRadius: 75,
                                color: brandTextInputShadow.withOpacity(0.1),
                              ),
                            ],
                            color: brandWhite,
                          ),
                          child: Center(
                            child: TextField(
                              decoration:
                                  InputDecoration.collapsed(hintText: ''),
                              keyboardType: TextInputType.numberWithOptions(),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 18),
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: <Widget>[
                        Text(
                          'CVV',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            height: 23 / 14,
                            color: brandGreyAlt,
                          ),
                        ),
                        SizedBox(height: screenSize.height / 101.5),
                        Container(
                          padding:
                              EdgeInsets.symmetric(vertical: 9, horizontal: 32),
                          height: 43,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(27.5),
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(0, 10),
                                blurRadius: 75,
                                color: brandTextInputShadow.withOpacity(0.1),
                              ),
                            ],
                            color: brandWhite,
                          ),
                          child: Center(
                            child: TextField(
                              decoration:
                                  InputDecoration.collapsed(hintText: ''),
                              keyboardType: TextInputType.number,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: screenSize.height / 45.11),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'lorem ipsum dolor sit amet, consecteur adipiscing elit. Suspendisse ipsum leo molestle in arcu sapien',
                  style: TextStyle(
                    fontSize: 10,
                    height: 18 / 10,
                    color: brandGreyAltOp80,
                  ),
                ),
              ),
              SizedBox(height: screenSize.height / 20.3),
              BrandButton(
                height: 43,
                child: Text(
                  'Continue',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    height: 24.55 / 18,
                    color: brandWhite,
                  ),
                ),
                onTap: () {
                  Navigator.of(context)
                      .popUntil(ModalRoute.withName(ROUTE_BOOKING));
                },
                color: brandOrange,
              )
            ],
          ),
        ),
      ),
    );
  }
}
