import 'package:encostay/core/utilities/colors.dart';
import 'package:encostay/features/shared/payment_method_management/presentation/ui/components/card_selection_dialog.dart';
import 'package:flutter/material.dart';

class SelectCardScreen extends StatelessWidget {
  const SelectCardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Payment Method',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            height: 30 / 18,
          ),
        ),
        foregroundColor: brandBrown,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(Icons.close),
          ),
        ],
      ),
      body: CardSelectionDialog(),
    );
  }
}
