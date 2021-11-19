import 'package:encostay/core/utilities/color_palette.dart';
import 'package:encostay/core/widgets/atoms/filters_button.dart';
import 'package:encostay/core/widgets/atoms/search_box.dart';
import 'package:encostay/features/host/tx_management/presentation/ui/components/transaction_tile.dart';
import 'package:flutter/material.dart';

class TransactionHistoryScreen extends StatelessWidget {
  final TextEditingController searchTextController = TextEditingController();

  TransactionHistoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Transaction History',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            height: 27 / 20,
          ),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 23),
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.search_outlined),
            ),
          ),
        ],
        automaticallyImplyLeading: false,
        foregroundColor: ColorPalette.brandBrown,
        backgroundColor: Colors.transparent,
        elevation: 0,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Row(
              children: [
                Flexible(
                  child: Container(
                    padding: EdgeInsets.only(right: 12),
                    decoration: BoxDecoration(
                      color: ColorPalette.searchBoxBackgroundColor
                          .withOpacity(0.08),
                      borderRadius: BorderRadius.horizontal(
                        left: Radius.circular(20),
                        right: Radius.circular(10),
                      ),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 9),
                  child: FiltersButton(),
                ),
              ],
            ),
          ),
        ),
      ),
      body: ListView.separated(
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 29),
        itemBuilder: (context, index) => TransactionTile(
          transactionType: (index.isOdd)
              ? TransactionType.withdrawal
              : TransactionType.earning,
        ),
        separatorBuilder: (_, index) => SizedBox(height: 14),
        itemCount: 10,
      ),
    );
  }
}
