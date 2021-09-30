import 'package:encostay/utilities/colors.dart';
import 'package:encostay/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PaymentMethodTile extends StatefulWidget {
  const PaymentMethodTile({
    Key? key,
    required this.iconPath,
    required this.label,
  }) : super(key: key);

  final String iconPath, label;

  @override
  _PaymentMethodTileState createState() => _PaymentMethodTileState();
}

class _PaymentMethodTileState extends State<PaymentMethodTile> {
  bool _documentIsUploaded = true;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _documentIsUploaded = !_documentIsUploaded;
        });
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
              padding: EdgeInsets.symmetric(vertical: 12),
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
