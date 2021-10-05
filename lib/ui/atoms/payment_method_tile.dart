import 'package:encostay/ui/screens/add_card_screen.dart';
import 'package:encostay/utilities/colors.dart';
import 'package:encostay/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PaymentMethodTile extends StatefulWidget {
  const PaymentMethodTile({
    Key? key,
    required this.iconPath,
    required this.label,
    this.padding,
    this.onTap,
  }) : super(key: key);

  final String iconPath, label;
  final EdgeInsetsGeometry? padding;
  final void Function()? onTap;

  // TODO
  /// I'll add a string variable representing the named route that you'll want
  /// to navigate to so that you can pass it as an argument to the constructor
  /// of this class

  @override
  _PaymentMethodTileState createState() => _PaymentMethodTileState();
}

class _PaymentMethodTileState extends State<PaymentMethodTile> {
  bool _documentIsUploaded = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _documentIsUploaded = !_documentIsUploaded;
        });
        if (_documentIsUploaded) {
          Navigator.of(context).pushNamed(ROUTE_ADD_CARD);
        }

        // TODO
        /// Later, navigate to a named route here
      },
      child: Container(
        padding: EdgeInsets.all(14) + EdgeInsets.only(right: 24),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: greyCardColor,
        ),
        child: Row(
          children: <Widget>[
            Container(
              width: 64.24,
              height: 44,
              padding: widget.padding ?? EdgeInsets.symmetric(vertical: 12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(11),
                color: brandWhite,
              ),
              child: SvgPicture.asset(
                widget.iconPath,
              ),
            ),
            SizedBox(
              width: 19.76,
            ),
            Text(
              widget.label,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                height: 23 / 14,
                color: lightTextColor,
              ),
            ),
            Expanded(
              child: SizedBox(),
            ),
            SvgPicture.asset(
              (_documentIsUploaded)
                  ? (COLORED_VECTORS_PATH + 'ic_marked.svg')
                  : (VECTORS_ROOT_PATH + 'unmarked.svg'),
              height: 24,
            ),
          ],
        ),
      ),
    );
  }
}
