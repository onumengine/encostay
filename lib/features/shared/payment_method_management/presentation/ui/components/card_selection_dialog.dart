import 'package:encostay/models/payment_card.dart';
import 'package:encostay/core/widgets/molecules/payment_card_tile.dart';
import 'package:encostay/core/utilities/color_palette.dart';
import 'package:encostay/core/utilities/enums.dart';
import 'package:flutter/material.dart';

class CardSelectionDialog extends StatelessWidget {
  CardSelectionDialog({Key? key}) : super(key: key);

  final List<PaymentCard> availableCards = <PaymentCard>[
    DebitCard(
      name: 'John Doe Richdie',
      cardNumber: '125412541254',
      expiryDate: '10/24',
      cvv: '258',
      paymentProcessor: PaymentProcessor.mastercard,
    ),
    DebitCard(
      name: 'John Doe Richdie',
      cardNumber: '125412541254',
      expiryDate: '10/24',
      cvv: '258',
      paymentProcessor: PaymentProcessor.mastercard,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 348,
      child: Column(
        children: [
          PaymentCardTile(
            card: availableCards[0],
          ),
          SizedBox(
            height: 20,
          ),
          PaymentCardTile(
            card: availableCards[1],
          ),
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.all(14),
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
                Container(
                  height: 44,
                  width: 64.24,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(11),
                    color: ColorPalette.paleTextColor.withOpacity(0.1),
                  ),
                  child: Icon(Icons.add),
                ),
                SizedBox(
                  width: 19.76,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Add Card',
                        style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w600,
                          height: 23 / 11,
                          color: ColorPalette.lightTextColor,
                        ),
                      ),
                      Text(
                        'Lorem ipsum dolor sit amet consecteur adipiscing elit. Morbi nisl urna amet elementum proin nunc',
                        style: TextStyle(
                          fontSize: 9,
                          height: 13.5 / 9,
                          color: Color(0xff787878),
                        ),
                        softWrap: true,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
