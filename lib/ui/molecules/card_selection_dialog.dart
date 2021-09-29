import 'package:encostay/models/payment_card.dart';
import 'package:encostay/ui/molecules/payment_card_tile.dart';
import 'package:encostay/utilities/enums.dart';
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
    return Column(
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
        SizedBox(height: 20)
      ],
    );
  }
}
