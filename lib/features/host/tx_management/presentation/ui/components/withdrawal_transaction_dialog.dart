import 'package:encostay/core/utilities/color_palette.dart';
import 'package:flutter/material.dart';

class WithdrawalTransactionDialog extends StatelessWidget {
  const WithdrawalTransactionDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 392,
      width: 365,
      color: ColorPalette.brandWhite,
      child: Center(
        child: Text('WithdrawalTransactionDialog'),
      ),
    );
  }
}
