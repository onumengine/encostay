import 'package:encostay/core/utilities/color_palette.dart';
import 'package:encostay/core/utilities/constants.dart';
import 'package:encostay/core/utilities/route_names.dart';
import 'package:encostay/features/host/tx_management/presentation/ui/components/earnings_card.dart';
import 'package:encostay/features/host/tx_management/presentation/ui/components/transaction_summary_card.dart';
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
          foregroundColor: ColorPalette.brownTextColor,
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
              padding: const EdgeInsets.only(left: 20, bottom: 10),
              child: Divider(
                endIndent: 20,
                color: Colors.black,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    blurRadius: 40,
                    offset: Offset(0, 20),
                    color: ColorPalette.hostCardShadowColor.withOpacity(0.05),
                  ),
                ],
              ),
              child: EarningsCard(),
            ),
            SizedBox(
              height: 17,
            ),
            TransactionSummaryCard(
              title: 'Available balance',
              buttonText: 'Withdraw Funds',
              onTap: () {
                Navigator.of(context).pushNamed(RouteNames.WITHDRAW_FUNDS);
              },
            ),
            SizedBox(
              height: 17,
            ),
            TransactionSummaryCard(
              title: 'Total Earnings',
              buttonText: 'View History',
              onTap: () {
                Navigator.of(context).pushNamed(RouteNames.TRANSACTION_HISTORY);
              },
            ),
            SizedBox(
              height: 17,
            ),
            TransactionSummaryCard(
              title: 'Total Withdrawn',
              buttonText: 'View History',
              onTap: () {
                Navigator.of(context).pushNamed(RouteNames.TRANSACTION_HISTORY);
              },
            ),
            SizedBox(
              height: 200,
            ),
          ]),
        ),
      ],
    ));
  }
}
