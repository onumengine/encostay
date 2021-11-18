import 'package:encostay/core/widgets/atoms/filter_chip.dart';
import 'package:encostay/core/widgets/atoms/search_box.dart';
import 'package:encostay/core/widgets/molecules/apartment_card.dart';
import 'package:encostay/core/widgets/organisms/custom_bottom_navbar.dart';
import 'package:encostay/features/guest/booking/presentation/ui/screens/search_results_screen.dart';
import 'package:encostay/core/utilities/color_palette.dart';
import 'package:encostay/core/utilities/constants.dart';
import 'package:encostay/core/utilities/text_styles.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController controller = TextEditingController();
  List<String> _labels = [
    'All',
    'Apartment',
    'Loft',
    'Condo',
    'House',
    'Studio',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPalette.brandBackgroundApp,
      extendBody: true,
      body: SafeArea(
        bottom: false,
        child: ListView(
          children: [
            SizedBox(
              height: kToolbarHeight,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18, right: 28),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hey Olaitan!',
                        style: TextStyle(
                          fontSize: medium14.fontSize,
                          fontWeight: medium14.fontWeight,
                          height: 23 / 14,
                          color: Color(0xffaeafae),
                        ),
                      ),
                      Text(
                        'let\'s find your best residence!',
                        style: TextStyle(
                          fontSize: medium14.fontSize,
                          fontWeight: medium14.fontWeight,
                          height: 23 / 14,
                        ),
                      ),
                    ],
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage(IMAGES_PATH + 'img_avatar.png'),
                    radius: 24,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 27, 25, 27),
              child: SearchBox(
                controller: controller,
                searchFunction: (searchQuery) {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => SearchResultsScreen(),
                    ),
                  );
                },
              ),
            ),
            Container(
              height: 35,
              padding: EdgeInsets.only(left: 17),
              child: ListView.separated(
                itemBuilder: (_, index) => CustomChip(label: _labels[index]),
                itemCount: _labels.length,
                separatorBuilder: (_, index) => SizedBox(
                  width: 11,
                ),
                scrollDirection: Axis.horizontal,
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18, right: 36),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Featured places',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      height: 23 / 14,
                      color: ColorPalette.brandBrown,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('See all button clicked'),
                        ),
                      );
                    },
                    child: Text(
                      'See All',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        height: 22 / 14,
                        color: ColorPalette.brandOrange,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 17,
            ),
            Container(
              height: 350,
              child: ListView.separated(
                itemBuilder: (_, index) => ApartmentCard(),
                separatorBuilder: (_, index) => SizedBox(width: 10),
                scrollDirection: Axis.horizontal,
                itemCount: 20,
                padding: EdgeInsets.only(left: 17),
              ),
            ),
            SizedBox(height: 19),
            Padding(
              padding: const EdgeInsets.only(left: 18, right: 36),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Favorite places',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      height: 23 / 14,
                      color: ColorPalette.brandBrown,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('See all button clicked'),
                        ),
                      );
                    },
                    child: Text(
                      'See All',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        height: 22 / 14,
                        color: ColorPalette.brandOrange,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 17),
            Container(
              height: 350,
              child: ListView.separated(
                itemBuilder: (_, index) => ApartmentCard(),
                separatorBuilder: (_, index) => SizedBox(width: 10),
                scrollDirection: Axis.horizontal,
                itemCount: 20,
                padding: EdgeInsets.only(left: 17),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavbar(
        onTap: (selectedIndex) {
          print(selectedIndex);
        },
      ),
    );
  }
}
