import 'package:encostay/features/shared/payment_method_management/presentation/ui/components/payment_card_component.dart';
import 'package:encostay/models/payment_card.dart';
import 'package:flutter/material.dart';

class SelectableCardTile extends StatefulWidget {
  final PaymentCard card;

  const SelectableCardTile({required this.card});

  _SelectableCardTileState createState() => _SelectableCardTileState();
}

class _SelectableCardTileState extends State<SelectableCardTile> {
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
          PaymentCardComponent(card: widget.card),
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
