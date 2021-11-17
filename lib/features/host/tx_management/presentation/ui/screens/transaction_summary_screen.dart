import 'package:flutter/material.dart';

class TransactionSummaryScreen extends StatelessWidget {
  const TransactionSummaryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Transactions',
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w500,
            height: 19 / 15,
            letterSpacing: 0.3,
          ),
        ),
      ),
    );
  }
}
