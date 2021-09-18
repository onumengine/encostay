import 'package:carousel_slider/carousel_slider.dart';
import 'package:encostay/ui/atoms/amenity_chip.dart';
import 'package:encostay/ui/atoms/availability_tile.dart';
import 'package:encostay/ui/molecules/bedroom_card.dart';
import 'package:encostay/ui/screens/preview_screen.dart';
import 'package:encostay/utilities/colors.dart';
import 'package:encostay/utilities/constants.dart';
import 'package:flutter/material.dart';

class ApartmentDetailsScreen extends StatefulWidget {
  const ApartmentDetailsScreen({Key? key}) : super(key: key);

  @override
  _ApartmentDetailsScreenState createState() => _ApartmentDetailsScreenState();
}

class _ApartmentDetailsScreenState extends State<ApartmentDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: brandWhite,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leadingWidth: 56,
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Padding(
            padding: const EdgeInsets.only(left: 24) +
                EdgeInsets.symmetric(vertical: 12),
            child: Container(
              height: 32,
              width: 32,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                color: brandOrange,
              ),
              child: Icon(
                Icons.arrow_back,
                size: 24,
              ),
            ),
          ),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
                  right: 16,
                ) +
                EdgeInsets.symmetric(vertical: 10),
            child: RawMaterialButton(
              child: ImageIcon(
                AssetImage('lib/assets/images/save_icon.png'),
                color: brandOrange,
                size: 24,
              ),
              onPressed: () {},
              fillColor: brandWhite,
              shape: CircleBorder(),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
              child: CarouselSlider(
                items: [0, 1, 2, 3, 4, 5]
                    .map(
                      (e) => ClipRRect(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30),
                        ),
                        child: Image.asset(
                          ASSET_IMAGE_PATH + 'apartment_2.png',
                        ),
                      ),
                    )
                    .toList(),
                options: CarouselOptions(
                  aspectRatio: 1.0,
                  viewportFraction: 1.0,
                  enlargeCenterPage: true,
                  disableCenter: true,
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional.center,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ImageIcon(
                    AssetImage('lib/assets/images/rating_icon.png'),
                    color: brandYellow,
                    size: 24,
                  ),
                  Text(
                    '4.8',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      height: 23 / 14,
                      color: Color(0xff2f2f2f),
                    ),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    '(245)',
                    style: TextStyle(
                      fontSize: 12,
                      height: 22 / 12,
                      color: Color(0xffa1a0a6),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Align(
              alignment: AlignmentDirectional.center,
              child: Text(
                'Perfect Room, East Village Dream',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  height: 30 / 18,
                  color: brandBrown,
                ),
              ),
            ),
            SizedBox(height: 3),
            Align(
              alignment: AlignmentDirectional.center,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ImageIcon(
                    AssetImage('lib/assets/images/location_icon.png'),
                    size: 13,
                    color: brandBrown,
                  ),
                  SizedBox(
                    width: 13,
                  ),
                  Text(
                    'Adeyemo Off Arulogun Road, Yaba, Lagos',
                    style: TextStyle(
                      fontSize: 12,
                      height: 22 / 12,
                      color: Color(0xffa1a0a6),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 14,
            ),
            Container(
              padding: EdgeInsets.all(13),
              width: double.maxFinite,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(26),
                color: Color(0xfffff4e0),
              ),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: PhysicalModel(
                      color: Color(0xfffff4e0),
                      borderRadius: BorderRadius.circular(15),
                      elevation: 3,
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 11, horizontal: 17),
                        decoration: BoxDecoration(
                          color: brandWhite,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'New York',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                height: 20 / 12,
                                color: brandBrown,
                              ),
                            ),
                            Text(
                              'United States',
                              style: TextStyle(
                                fontSize: 10,
                                height: 18 / 10,
                                color: Color(0xffa1a0a6),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: PhysicalModel(
                      color: Color(0xfffff4e0),
                      borderRadius: BorderRadius.circular(15),
                      elevation: 3,
                      child: Container(
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: brandWhite,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.asset(
                                  'lib/assets/images/owner_pic.png'),
                            ),
                            SizedBox(width: 8),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Robert',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    height: 20 / 12,
                                    color: brandBrown,
                                  ),
                                ),
                                Text(
                                  'Owner',
                                  style: TextStyle(
                                    fontSize: 10,
                                    height: 18 / 10,
                                    color: Color(0xffa1a0a6),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 14),
            Text(
              'About',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                height: 23 / 14,
              ),
            ),
            SizedBox(height: 14),
            Text(
              'Welcome to New York City, travelers! I\'m excited toshare my newly renovated Upper West Side apartment with you! My place is close...',
              style: TextStyle(
                fontSize: 12,
                height: 22 / 12,
                color: Color(0xffa1a0a6),
              ),
            ),
            Align(
              alignment: AlignmentDirectional.centerEnd,
              child: Text(
                'read more',
                style: TextStyle(
                  fontSize: 12,
                  height: 22 / 12,
                  color: brandOrange,
                ),
              ),
            ),
            SizedBox(height: 14),
            Container(
              height: 308,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Color(0xfff8f9f9),
              ),
            ),
            SizedBox(height: 18),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(24),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Color(0xfff8f9f9),
              ),
              child: DropdownButton(
                isExpanded: true,
                underline: SizedBox(
                  height: 0,
                ),
                hint: Text('Price'),
                items: [],
              ),
            ),
            SizedBox(height: 21),
            Text(
              'Accommodation',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                height: 23 / 14,
                color: brandBrown,
              ),
            ),
            SizedBox(height: 14),
            Container(
              height: 122,
              width: double.maxFinite,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  BedroomCard(
                    isSelected: true,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  BedroomCard(),
                ],
              ),
            ),
            SizedBox(
              height: 7,
            ),
            Text(
              'Amenities',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                height: 23 / 14,
                color: brandBrown,
              ),
            ),
            SizedBox(height: 14),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Column(
                  children: [
                    AmenityChip(iconPath: AMENITY_ICONS_PATH + 'wifi.png'),
                    SizedBox(height: 5),
                    Text(
                      'Wifi',
                      style: TextStyle(
                        fontSize: 10,
                        height: 18 / 10,
                        color: brandBrown,
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 19),
                Column(
                  children: [
                    AmenityChip(iconPath: AMENITY_ICONS_PATH + 'tv.png'),
                    SizedBox(height: 5),
                    Text(
                      'TV Cable',
                      style: TextStyle(
                        fontSize: 10,
                        height: 18 / 10,
                        color: brandBrown,
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 19),
                Column(
                  children: [
                    AmenityChip(iconPath: AMENITY_ICONS_PATH + 'gym.png'),
                    SizedBox(height: 5),
                    Text(
                      'Laundry',
                      style: TextStyle(
                        fontSize: 10,
                        height: 18 / 10,
                        color: brandBrown,
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 19),
                Column(
                  children: [
                    AmenityChip(iconPath: AMENITY_ICONS_PATH + 'laundry.png'),
                    SizedBox(height: 5),
                    Text(
                      'Gym',
                      style: TextStyle(
                        fontSize: 10,
                        height: 18 / 10,
                        color: brandBrown,
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 19),
                Column(
                  children: [
                    AmenityChip(iconPath: AMENITY_ICONS_PATH + 'security.png'),
                    SizedBox(height: 5),
                    Text(
                      'Security',
                      style: TextStyle(
                        fontSize: 10,
                        height: 18 / 10,
                        color: brandBrown,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              'The Location',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                height: 23 / 14,
                color: brandBrown,
              ),
            ),
            SizedBox(
              height: 7,
            ),
            Container(
              width: double.maxFinite,
              height: 137,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13),
              ),
            ),
            SizedBox(
              height: 7,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                ImageIcon(
                  AssetImage('lib/assets/images/location_icon.png'),
                  size: 13,
                  color: brandBrown,
                ),
                SizedBox(
                  width: 13,
                ),
                Text(
                  'Adeyemo Off Arulogun Road, Yaba, Lagos',
                  style: TextStyle(
                    fontSize: 12,
                    height: 22 / 12,
                    color: Color(0xffa1a0a6),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 12,
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Terms & rules',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    height: 23 / 14,
                    color: brandBrown,
                  ),
                ),
                Expanded(
                  child: Divider(
                    thickness: 1,
                    color: Color(0xffeeeeee),
                    endIndent: 9,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 12,
            ),
            Column(
              children: <Widget>[
                ListTile(
                  leading:
                      Image.asset(ASSET_IMAGE_PATH + 'not_allowed_icon.png'),
                  title: Text(
                    'Smoking',
                    style: TextStyle(
                      fontSize: 12,
                      height: 22 / 12,
                      color: brandBrown,
                    ),
                  ),
                  trailing: Text(
                    'No',
                    style: TextStyle(
                      fontSize: 12,
                      height: 22 / 12,
                      color: brandBrown,
                    ),
                  ),
                ),
                ListTile(
                  leading: Image.asset(ASSET_IMAGE_PATH + 'allowed_icon.png'),
                  title: Text(
                    'Pets Allowed',
                    style: TextStyle(
                      fontSize: 12,
                      height: 22 / 12,
                      color: brandBrown,
                    ),
                  ),
                  trailing: Text(
                    'Yes',
                    style: TextStyle(
                      fontSize: 12,
                      height: 22 / 12,
                      color: brandBrown,
                    ),
                  ),
                ),
                ListTile(
                  leading: Image.asset(ASSET_IMAGE_PATH + 'allowed_icon.png'),
                  title: Text(
                    'Party Allowed',
                    style: TextStyle(
                      fontSize: 12,
                      height: 22 / 12,
                      color: brandBrown,
                    ),
                  ),
                  trailing: Text(
                    'Yes',
                    style: TextStyle(
                      fontSize: 12,
                      height: 22 / 12,
                      color: brandBrown,
                    ),
                  ),
                ),
                ListTile(
                  leading: Image.asset(ASSET_IMAGE_PATH + 'allowed_icon.png'),
                  title: Text(
                    'Children Allowed',
                    style: TextStyle(
                      fontSize: 12,
                      height: 22 / 12,
                      color: brandBrown,
                    ),
                  ),
                  trailing: Text(
                    'Yes',
                    style: TextStyle(
                      fontSize: 12,
                      height: 22 / 12,
                      color: brandBrown,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Text(
              'Additional rules information',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                height: 23 / 14,
                color: brandBrown,
              ),
            ),
            Text(
              'Some additional rule information that the user may wan to leave for the customer in case they have some unique rule thet the default use cases do not cover',
              style: TextStyle(
                fontSize: 12,
                height: 22 / 12,
                color: Color(0xffa1a0a6),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              'Availability',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                height: 23 / 14,
                color: brandBrown,
              ),
            ),
            SizedBox(
              height: 7,
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Expanded(
                  child: AvailabilityTile(
                    text: 'The minimum stay is 5 nights',
                  ),
                ),
                SizedBox(
                  width: 32,
                ),
                Expanded(
                  child: AvailabilityTile(
                    text: 'The maximum stay is 60 nights',
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'Reviews',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    height: 23 / 14,
                    color: Color(0xff2f2f2f),
                  ),
                ),
                Text(
                  'Read',
                  style: TextStyle(
                    fontSize: 12,
                    height: 22 / 12,
                    color: brandOrange,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              '97 comments',
              style: TextStyle(
                fontSize: 12,
                height: 22 / 12,
                color: Color(0Xffa1a0a6),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Color(0xffff765e),
                child: Text(
                  'A',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    height: 19.5 / 16,
                    color: brandWhite,
                  ),
                ),
              ),
              title: Text(
                'Alicia',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  height: 20 / 12,
                  color: Color(0xff2f2f2f),
                ),
              ),
              subtitle: Text(
                'Love the place. A lot of things to do within a few blocks',
                style: TextStyle(
                  fontSize: 12,
                  height: 22 / 12,
                  color: Color(0xffa1a0a6),
                ),
              ),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Color(0xffff765e),
                child: Text(
                  'A',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    height: 19.5 / 16,
                    color: brandWhite,
                  ),
                ),
              ),
              title: Text(
                'Alicia',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  height: 20 / 12,
                  color: Color(0xff2f2f2f),
                ),
              ),
              subtitle: Text(
                'Love the place. A lot of things to do within a few blocks',
                style: TextStyle(
                  fontSize: 12,
                  height: 22 / 12,
                  color: Color(0xffa1a0a6),
                ),
              ),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Color(0xffff765e),
                child: Text(
                  'A',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    height: 19.5 / 16,
                    color: brandWhite,
                  ),
                ),
              ),
              title: Text(
                'Alicia',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  height: 20 / 12,
                  color: Color(0xff2f2f2f),
                ),
              ),
              subtitle: Text(
                'Love the place. A lot of things to do within a few blocks',
                style: TextStyle(
                  fontSize: 12,
                  height: 22 / 12,
                  color: Color(0xffa1a0a6),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Align(
              alignment: AlignmentDirectional.center,
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11),
                  color: Color(0xffe2f4f3),
                ),
                child: Center(
                  child: Text(
                    'Available',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      height: 23 / 14,
                      color: Color(0xff27ae60),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 151,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        width: screenSize.width,
        padding: EdgeInsets.only(left: 38, right: 22) +
            EdgeInsets.symmetric(vertical: 22),
        decoration: BoxDecoration(
          color: brandWhite,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(48.5),
            topRight: Radius.circular(48.5),
          ),
          boxShadow: [
            BoxShadow(
              color: Color(0xffdde0e8),
              blurRadius: 33,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text('\$172/night'),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => PreviewScreen(),
                  ),
                );
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 17, horizontal: 24),
                decoration: BoxDecoration(
                  color: brandBrown,
                  borderRadius: BorderRadius.circular(26.5),
                ),
                child: Text(
                  'Reserve',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    height: 19.5 / 16,
                    color: brandWhite,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
