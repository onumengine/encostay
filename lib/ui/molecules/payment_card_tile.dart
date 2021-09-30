import 'package:encostay/models/payment_card.dart';
import 'package:encostay/utilities/constants.dart';
import 'package:encostay/utilities/enums.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PaymentCardTile extends StatefulWidget {
  const PaymentCardTile({required this.card});

  final TextStyle _labelStyle =
      const TextStyle(fontSize: 10, height: 15 / 10, color: Color(0xffc4c4c4));
  final TextStyle _detailStyle = const TextStyle(
    fontSize: 10,
    height: 15 / 10,
    color: Color(0xff4e4e4e),
  );
  final PaymentCard card;

  _PaymentCardTileState createState() => _PaymentCardTileState();
}

class _PaymentCardTileState extends State<PaymentCardTile> {
  bool _checkboxIsChecked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(11, 12, 11, 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: Color(0xffc4c4c4),
          width: 0.5,
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SvgPicture.asset(
            (widget.card.getPaymentProcessor() == PaymentProcessor.mastercard
                ? (COLORED_VECTORS_PATH + 'ic_mastercard.svg')
                : (COLORED_VECTORS_PATH + 'ic_mastercard.svg')),
          ),
          SizedBox(
            width: 11,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                  style: widget._detailStyle,
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Card Name',
                      style: widget._labelStyle,
                    ),
                    TextSpan(
                      text: widget.card.getName(),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              RichText(
                text: TextSpan(
                  style: widget._detailStyle,
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Card Number',
                      style: widget._labelStyle,
                    ),
                    TextSpan(
                      text: widget.card.getCardNumber(),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              RichText(
                text: TextSpan(
                  style: widget._detailStyle,
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Expiry Date',
                      style: widget._labelStyle,
                    ),
                    TextSpan(
                      text: widget.card.getExpiryDate(),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              RichText(
                text: TextSpan(
                  style: widget._detailStyle,
                  children: <TextSpan>[
                    TextSpan(
                      text: 'CVV',
                      style: widget._labelStyle,
                    ),
                    TextSpan(
                      text: widget.card.getCVV(),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Expanded(
            child: SizedBox(),
          ),
          Checkbox(
              value: _checkboxIsChecked,
              onChanged: (value) {
                setState(() {
                  _checkboxIsChecked = value!;
                });
              })
        ],
      ),
    );
  }
}
