import 'package:encostay/core/utilities/constants.dart';
import 'package:encostay/core/utilities/enums.dart';
import 'package:encostay/models/payment_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PaymentCardComponent extends StatelessWidget {
  final TextStyle labelStyle =
      const TextStyle(fontSize: 10, height: 15 / 10, color: Color(0xffc4c4c4));
  final TextStyle detailStyle = const TextStyle(
    fontSize: 10,
    height: 15 / 10,
    color: Color(0xff4e4e4e),
  );
  final PaymentCard card;

  const PaymentCardComponent({
    Key? key,
    required this.card,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          SvgPicture.asset(
            (card.getPaymentProcessor() == PaymentProcessor.mastercard
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
                  style: detailStyle,
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Card Name: ',
                      style: labelStyle,
                    ),
                    TextSpan(
                      text: card.getName(),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              RichText(
                text: TextSpan(
                  style: detailStyle,
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Card Number: ',
                      style: labelStyle,
                    ),
                    TextSpan(
                      text: card.getCardNumber(),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              RichText(
                text: TextSpan(
                  style: detailStyle,
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Expiry Date: ',
                      style: labelStyle,
                    ),
                    TextSpan(
                      text: card.getExpiryDate(),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              RichText(
                text: TextSpan(
                  style: detailStyle,
                  children: <TextSpan>[
                    TextSpan(
                      text: 'CVV: ',
                      style: labelStyle,
                    ),
                    TextSpan(
                      text: card.getCVV(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
