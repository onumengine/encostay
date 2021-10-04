import 'package:encostay/ui/organisms/home_reviews.dart';
import 'package:encostay/ui/organisms/owner_profile.dart';
import 'package:encostay/utilities/colors.dart';
import 'package:encostay/utilities/constants.dart';
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
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: brandWhite,
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              automaticallyImplyLeading: true,
              backgroundColor: brandWhite,
              foregroundColor: Colors.black,
              elevation: 0,
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
                  height: 200,
                ),
                title: Container(
                  height: 200,
                ),
              ),
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(57),
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 24),
                  decoration: BoxDecoration(
                    color: brandWhite,
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
                    labelColor: brandWhite,
                    labelStyle: TextStyle(
                      fontWeight: FontWeight.w500,
                      height: 23 / 14,
                    ),
                    unselectedLabelColor: lightTextColor,
                    tabs: <Tab>[
                      Tab(
                        text: 'Profile',
                      ),
                      Tab(
                        text: 'Reviews',
                      ),
                    ],
                    indicator: BoxDecoration(
                      color: brandOrange,
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
