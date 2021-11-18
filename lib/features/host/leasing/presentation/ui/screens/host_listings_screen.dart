import 'package:encostay/core/utilities/color_palette.dart';
import 'package:encostay/core/widgets/molecules/add_new_listing_card.dart';
import 'package:encostay/core/widgets/molecules/listing_tile.dart';
import 'package:flutter/material.dart';

class HostListingsScreen extends StatelessWidget {
  const HostListingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: true,
            centerTitle: true,
            title: Text(
              'Your Listings',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                height: 19 / 15,
                letterSpacing: 0.3,
              ),
            ),
            backgroundColor: Colors.transparent,
            foregroundColor: ColorPalette.brandBrown,
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              AddNewListingCard(),
              ...List.generate(
                20,
                (index) => Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: ListingTile(),
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
