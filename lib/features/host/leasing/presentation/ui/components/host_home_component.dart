import 'package:encostay/core/utilities/color_palette.dart';
import 'package:encostay/core/utilities/constants.dart';
import 'package:encostay/core/widgets/atoms/brand_button.dart';
import 'package:encostay/core/widgets/molecules/add_new_listing_card.dart';
import 'package:encostay/core/widgets/molecules/apartment_card.dart';
import 'package:encostay/features/host/tx_management/presentation/ui/components/earnings_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HostHomeComponent extends StatelessWidget {
  const HostHomeComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          floating: true,
          leading: IconButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Clicked hamburger menu'),
                ),
              );
            },
            icon: Icon(
              Icons.sort,
              color: hamburgerIconColor,
            ),
          ),
          title: Text(
            'Welcome Back Olaitan',
            style: TextStyle(
              fontSize: 12,
              height: 34 / 12,
              color: palehostText,
            ),
          ),
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
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
              width: screenWidth,
              child: Row(
                children: [
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 70),
                          child: Text(
                            'Make Fortune Hosting Guest.',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              height: 19 / 15,
                              letterSpacing: 0.3,
                              color: ColorPalette.brownTextColor,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Text(
                            'Lorem ipsum dolor sit amet, consecteur adipiscing elit. Tristique magna posuere et dignissim praesent',
                            style: TextStyle(
                              fontSize: 9,
                              height: 14 / 9,
                              letterSpacing: 0.3,
                              color: ColorPalette.palehostText,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SvgPicture.asset(
                    VECTOR_IMAGES_PATH + 'income_advert.svg',
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Divider(
                endIndent: 20,
                color: Colors.black,
              ),
            ),
            EarningsCard(),
            AddNewListingCard()
          ]),
        ),
        SliverToBoxAdapter(
          child: Container(
            width: screenWidth,
            padding: EdgeInsets.symmetric(horizontal: 21),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Most Rated Listing',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    height: 23 / 14,
                    color: brandBrown,
                  ),
                ),
                BrandButton(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    'View All',
                    style: TextStyle(
                      fontSize: 12,
                      height: 14.63 / 12,
                      color: brandBrown,
                    ),
                  ),
                  onTap: () {},
                  color: Colors.transparent,
                ),
              ],
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Container(
            height: 350,
            margin: EdgeInsets.symmetric(vertical: 14),
            child: ListView.separated(
              itemBuilder: (_, index) => ApartmentCard(),
              separatorBuilder: (_, index) => SizedBox(width: 10),
              scrollDirection: Axis.horizontal,
              itemCount: 20,
              padding: EdgeInsets.only(left: 17),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Container(
            height: 150,
          ),
        )
      ],
    );
  }
}
