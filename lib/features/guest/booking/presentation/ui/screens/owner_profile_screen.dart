import 'package:encostay/core/widgets/organisms/home_reviews.dart';
import 'package:encostay/core/widgets/organisms/owner_profile.dart';
import 'package:encostay/core/utilities/color_palette.dart';
import 'package:encostay/core/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OwnerProfileScreen extends StatefulWidget {
  const OwnerProfileScreen({Key? key}) : super(key: key);

  @override
  _OwnerProfileScreenState createState() => _OwnerProfileScreenState();
}

class _OwnerProfileScreenState extends State<OwnerProfileScreen> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: ColorPalette.brandWhite,
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              automaticallyImplyLeading: true,
              backgroundColor: ColorPalette.brandWhite,
              foregroundColor: Colors.black,
              elevation: 0,
              expandedHeight: 300,
              pinned: true,
              floating: true,
              actions: [
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.only(right: 24),
                    child: SvgPicture.asset(VECTORS_ROOT_PATH + 'details.svg'),
                  ),
                ),
              ],
              flexibleSpace: FlexibleSpaceBar(
                background: Container(
                  height: screenSize.height / 3.2,
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        height: screenSize.height / 21.94,
                      ),
                      Container(
                        height: 90,
                        width: 95,
                        child: Image.asset(
                          IMAGES_PATH + 'owner.png',
                        ),
                      ),
                      SizedBox(
                        height: screenSize.height / 38.67,
                      ),
                      Text(
                        'Robert Bowie',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          height: 34 / 24,
                          color: ColorPalette.lightTextColor,
                        ),
                      ),
                      SizedBox(
                        height: screenSize.height / 73.82,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          SvgPicture.asset(
                              COLORED_VECTORS_PATH + 'ic_rating.svg'),
                          SizedBox(width: 2),
                          RichText(
                            text: TextSpan(
                              text: '4.8  ',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                height: 23 / 14,
                                color: ColorPalette.lightTextColor,
                              ),
                              children: [
                                TextSpan(
                                  text: '(617)',
                                  style: TextStyle(
                                    fontSize: 12,
                                    height: 22 / 12,
                                    color: ColorPalette.paleTextColor,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(57),
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 24),
                  decoration: BoxDecoration(
                    color: ColorPalette.brandWhite,
                    borderRadius: BorderRadius.circular(28.5),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(1, 4),
                        blurRadius: 13,
                        color: Color(0xc7e7e7e),
                      ),
                      BoxShadow(
                        offset: Offset(-16, -7),
                        blurRadius: 24,
                        color: Color(0x3cffffff),
                      ),
                    ],
                  ),
                  child: TabBar(
                    labelColor: ColorPalette.brandWhite,
                    labelStyle: TextStyle(
                      fontWeight: FontWeight.w500,
                      height: 23 / 14,
                    ),
                    unselectedLabelColor: ColorPalette.lightTextColor,
                    tabs: <Tab>[
                      Tab(
                        text: 'Profile',
                      ),
                      Tab(
                        text: 'Reviews',
                      ),
                    ],
                    indicator: BoxDecoration(
                      color: ColorPalette.brandOrange,
                      borderRadius: BorderRadius.circular(28.5),
                    ),
                  ),
                ),
              ),
            ),
            SliverFillRemaining(
              child: TabBarView(
                children: <Widget>[
                  OwnerProfileComponent(),
                  HomeReviewsComponent(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
