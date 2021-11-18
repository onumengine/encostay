import 'package:encostay/core/utilities/colors.dart';
import 'package:encostay/core/utilities/constants.dart';
import 'package:encostay/features/host/tx_management/presentation/ui/components/earnings_card.dart';
import 'package:flutter/material.dart';

class TransactionSummaryScreen extends StatelessWidget {
  const TransactionSummaryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
          title: Text(
            'Transactions',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
              height: 19 / 15,
              letterSpacing: 0.3,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          foregroundColor: brownTextColor,
          elevation: 0,
          actions: [
            CircleAvatar(
              backgroundImage: AssetImage(IMAGES_PATH + 'img_avatar.png'),
              radius: 24,
            ),
            SizedBox(width: 20),
          ],
        ),
        SliverList(
          delegate: SliverChildListDelegate([
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Divider(
                endIndent: 20,
                color: Colors.black,
              ),
            ),
            EarningsCard(),
          ]),
        ),
      ],
    ));
  }
}
