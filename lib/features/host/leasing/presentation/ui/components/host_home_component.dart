import 'package:encostay/core/utilities/colors.dart';
import 'package:encostay/core/utilities/constants.dart';
import 'package:encostay/core/widgets/atoms/brand_button.dart';
import 'package:encostay/core/widgets/molecules/apartment_card.dart';
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
                              color: brownTextColor,
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
                              color: palehostText,
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
            Container(
              width: screenWidth,
              height: 150,
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: brandWhite,
              ),
              child: Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  Positioned(
                    bottom: 24,
                    left: 25,
                    child: Container(
                      height: 16,
                      width: 13,
                      color: brandOrange.withOpacity(0.2),
                    ),
                  ),
                  Positioned(
                    bottom: 22,
                    left: 130,
                    child: Container(
                      height: 32,
                      width: 33.34,
                      color: brandOrange.withOpacity(0.15),
                    ),
                  ),
                  Positioned(
                    child: SvgPicture.asset(
                        VECTOR_IMAGES_PATH + 'host_earnings.svg'),
                    bottom: 7,
                    right: 18,
                  ),
                  Positioned(
                    child: SvgPicture.asset(
                        VECTORS_ROOT_PATH + 'dots_grid_vertical.svg'),
                    right: 10,
                  ),
                  Positioned(
                    child: SvgPicture.asset(
                        VECTORS_ROOT_PATH + 'dots_grid_horizontal.svg'),
                    bottom: 16,
                    left: 48,
                  ),
                  Positioned(
                    top: 20,
                    left: 23,
                    child: Container(
                      child: Column(
                        children: [
                          Text(
                            'Earnings',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              height: 18.29 / 15,
                              color: brownTextColor,
                            ),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          BrandButton(
                            child: Text(
                              'View',
                              style: TextStyle(
                                fontSize: 15,
                                height: 18.29 / 15,
                                color: brandWhite,
                              ),
                            ),
                            onTap: () {},
                            color: brandOrange,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 18, horizontal: 20),
              padding: EdgeInsets.symmetric(vertical: 14, horizontal: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: brandWhite,
              ),
              child: ListTile(
                leading: Container(
                  height: 58,
                  width: 66,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(11),
                    color: brandBrown.withOpacity(0.1),
                  ),
                  child: Icon(
                    Icons.add,
                    color: brandOrange,
                  ),
                ),
                title: Text(
                  'Add new listing',
                  style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w600,
                    height: 23 / 11,
                  ),
                ),
                subtitle: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi nisl urna amet elementum proin nunc',
                  style: TextStyle(
                    fontSize: 9,
                    height: 10.97 / 9,
                    color: ColorPalette.paleHostGrey,
                  ),
                ),
                contentPadding: EdgeInsets.zero,
                dense: true,
              ),
            ),
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
