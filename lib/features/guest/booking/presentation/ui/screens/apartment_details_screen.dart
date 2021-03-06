import 'package:encostay/core/utilities/route_names.dart';
import 'package:encostay/core/widgets/atoms/amenity_chip.dart';
import 'package:encostay/core/widgets/atoms/availability_tile.dart';
import 'package:encostay/core/widgets/molecules/bedroom_card.dart';
import 'package:encostay/core/widgets/molecules/custom_expansion_panel.dart';
import 'package:encostay/core/utilities/color_palette.dart';
import 'package:encostay/core/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:introduction_screen/introduction_screen.dart';

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
      backgroundColor: ColorPalette.brandWhite,
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
                color: ColorPalette.brandOrange,
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
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: RawMaterialButton(
              child: SvgPicture.asset(
                ORANGE_VECTORS_PATH + 'ic_orange_save.svg',
                width: 10,
                height: 12.7,
              ),
              onPressed: () {},
              fillColor: ColorPalette.brandWhite,
              shape: CircleBorder(),
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  constraints: BoxConstraints(
                    maxHeight: screenSize.width,
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                    child: IntroductionScreen(
                      dotsFlex: 2,
                      dotsDecorator: DotsDecorator(
                        color: ColorPalette.brandWhite,
                        activeColor: ColorPalette.brandWhite,
                        activeSize: Size(16.8, 9.0),
                        activeShape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      rawPages: <Widget>[
                        Image.asset(
                          IMAGES_PATH + 'apartment.png',
                          fit: BoxFit.cover,
                        ),
                        Image.asset(
                          IMAGES_PATH + 'apartment.png',
                          fit: BoxFit.cover,
                        ),
                        Image.asset(
                          IMAGES_PATH + 'apartment.png',
                          fit: BoxFit.cover,
                        ),
                        Image.asset(
                          IMAGES_PATH + 'apartment.png',
                          fit: BoxFit.cover,
                        ),
                        Image.asset(
                          IMAGES_PATH + 'apartment.png',
                          fit: BoxFit.cover,
                        ),
                        Image.asset(
                          IMAGES_PATH + 'apartment.png',
                          fit: BoxFit.cover,
                        ),
                      ],
                      showDoneButton: false,
                      showNextButton: false,
                      showSkipButton: false,
                    ),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Align(
                  alignment: AlignmentDirectional.center,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                            COLORED_VECTORS_PATH + 'ic_rating.svg'),
                        SizedBox(
                          width: 2,
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
                ),
                SizedBox(
                  height: 8,
                ),
                Align(
                  alignment: AlignmentDirectional.center,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Text(
                      'Perfect Room, East Village Dream',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        height: 30 / 18,
                        color: ColorPalette.brandBrown,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 3),
                Align(
                  alignment: AlignmentDirectional.center,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SvgPicture.asset(
                          VECTORS_ROOT_PATH + 'location.svg',
                          color: ColorPalette.brandBrown,
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
                ),
                SizedBox(
                  height: 14,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Container(
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
                              padding: EdgeInsets.symmetric(
                                  vertical: 11, horizontal: 17),
                              decoration: BoxDecoration(
                                color: ColorPalette.brandWhite,
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
                                      color: ColorPalette.brandBrown,
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
                          child: GestureDetector(
                            onTap: () {
                              Navigator.of(context).pushNamed(RouteNames.OWNER);
                            },
                            child: PhysicalModel(
                              color: Color(0xfffff4e0),
                              borderRadius: BorderRadius.circular(15),
                              elevation: 3,
                              child: Container(
                                padding: EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                  color: ColorPalette.brandWhite,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(15),
                                      child: Image.asset(
                                        IMAGES_PATH + 'owner.png',
                                        height: 36,
                                        width: 36,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    SizedBox(width: 8),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Robert',
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                            height: 20 / 12,
                                            color: ColorPalette.brandBrown,
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
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 14),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Text(
                    'About',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      height: 23 / 14,
                    ),
                  ),
                ),
                SizedBox(height: 14),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Text(
                    'Welcome to New York City, travelers! I\'m excited toshare my newly renovated Upper West Side apartment with you! My place is close...',
                    style: TextStyle(
                      fontSize: 12,
                      height: 22 / 12,
                      color: Color(0xffa1a0a6),
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional.centerEnd,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Text(
                      'read more',
                      style: TextStyle(
                        fontSize: 12,
                        height: 22 / 12,
                        color: ColorPalette.brandOrange,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 14),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Color(0xfff8f9f9),
                    ),
                    child: CustomExpansionPanel(
                      header: Text(
                        'Details',
                        style: TextStyle(
                          fontSize: 12,
                          height: 22 / 12,
                          color: ColorPalette.brandBrown,
                        ),
                      ),
                      body: Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Bedrooms',
                                style: TextStyle(
                                  fontSize: 12,
                                  height: 22 / 12,
                                  color: ColorPalette.brandBrown,
                                ),
                              ),
                              Text(
                                '2',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  height: 18 / 12,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 7),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Beds',
                                style: TextStyle(
                                  fontSize: 12,
                                  height: 22 / 12,
                                  color: ColorPalette.brandBrown,
                                ),
                              ),
                              Text(
                                '2',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  height: 18 / 12,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 7),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Bathrooms',
                                style: TextStyle(
                                  fontSize: 12,
                                  height: 22 / 12,
                                  color: ColorPalette.brandBrown,
                                ),
                              ),
                              Text(
                                '2',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  height: 18 / 12,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 7),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Check-in After',
                                style: TextStyle(
                                  fontSize: 12,
                                  height: 22 / 12,
                                  color: ColorPalette.brandBrown,
                                ),
                              ),
                              Text(
                                '10:00am',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  height: 18 / 12,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 7),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Check-out Before',
                                style: TextStyle(
                                  fontSize: 12,
                                  height: 22 / 12,
                                  color: ColorPalette.brandBrown,
                                ),
                              ),
                              Text(
                                '3:00am',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  height: 18 / 12,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 7),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Type',
                                style: TextStyle(
                                  fontSize: 12,
                                  height: 22 / 12,
                                  color: ColorPalette.brandBrown,
                                ),
                              ),
                              Text(
                                'Entire Place / Apartment',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  height: 18 / 12,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 18),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Color(0xfff8f9f9),
                    ),
                    child: CustomExpansionPanel(
                      header: Text(
                        'Price',
                        style: TextStyle(
                          fontSize: 12,
                          height: 22 / 12,
                          color: ColorPalette.brandBrown,
                        ),
                      ),
                      body: SizedBox(),
                    ),
                  ),
                ),
                SizedBox(height: 21),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Text(
                    'Accommodation',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      height: 23 / 14,
                      color: ColorPalette.brandBrown,
                    ),
                  ),
                ),
                SizedBox(height: 14),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Container(
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
                ),
                SizedBox(
                  height: 7,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Text(
                    'Amenities',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      height: 23 / 14,
                      color: ColorPalette.brandBrown,
                    ),
                  ),
                ),
                SizedBox(height: 14),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Column(
                        children: [
                          AmenityChip.svg(
                              iconPath:
                                  ORANGE_VECTORS_PATH + 'ic_orange_wifi.svg'),
                          SizedBox(height: 5),
                          Text(
                            'Wifi',
                            style: TextStyle(
                              fontSize: 10,
                              height: 18 / 10,
                              color: ColorPalette.brandBrown,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 19),
                      Column(
                        children: [
                          AmenityChip.svg(
                              iconPath:
                                  ORANGE_VECTORS_PATH + 'ic_orange_tv.svg'),
                          SizedBox(height: 5),
                          Text(
                            'TV Cable',
                            style: TextStyle(
                              fontSize: 10,
                              height: 18 / 10,
                              color: ColorPalette.brandBrown,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 19),
                      Column(
                        children: [
                          AmenityChip.svg(
                              iconPath: ORANGE_VECTORS_PATH +
                                  'ic_orange_laundry.svg'),
                          SizedBox(height: 5),
                          Text(
                            'Laundry',
                            style: TextStyle(
                              fontSize: 10,
                              height: 18 / 10,
                              color: ColorPalette.brandBrown,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 19),
                      Column(
                        children: [
                          AmenityChip.svg(
                              iconPath:
                                  ORANGE_VECTORS_PATH + 'ic_orange_gym.svg'),
                          SizedBox(height: 5),
                          Text(
                            'Gym',
                            style: TextStyle(
                              fontSize: 10,
                              height: 18 / 10,
                              color: ColorPalette.brandBrown,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 19),
                      Column(
                        children: [
                          AmenityChip.svg(
                              iconPath: ORANGE_VECTORS_PATH +
                                  'ic_orange_security.svg'),
                          SizedBox(height: 5),
                          Text(
                            'Security',
                            style: TextStyle(
                              fontSize: 10,
                              height: 18 / 10,
                              color: ColorPalette.brandBrown,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Text(
                    'The Location',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      height: 23 / 14,
                      color: ColorPalette.brandBrown,
                    ),
                  ),
                ),
                SizedBox(
                  height: 7,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Image.asset(IMAGES_PATH + 'mapview.png'),
                ),
                SizedBox(
                  height: 7,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      SvgPicture.asset(
                        VECTORS_ROOT_PATH + 'location.svg',
                        width: 9.66,
                        height: 13,
                        color: ColorPalette.brandBrown,
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
                  height: 12,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Terms & rules',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          height: 23 / 14,
                          color: ColorPalette.brandBrown,
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
                ),
                SizedBox(
                  height: 12,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    children: <Widget>[
                      ListTile(
                        leading: SvgPicture.asset(
                            COLORED_VECTORS_PATH + 'ic_uncheck.svg'),
                        title: Text(
                          'Smoking',
                          style: TextStyle(
                            fontSize: 12,
                            height: 22 / 12,
                            color: ColorPalette.brandBrown,
                          ),
                        ),
                        trailing: Text(
                          'No',
                          style: TextStyle(
                            fontSize: 12,
                            height: 22 / 12,
                            color: ColorPalette.brandBrown,
                          ),
                        ),
                      ),
                      ListTile(
                        leading: SvgPicture.asset(
                            COLORED_VECTORS_PATH + 'ic_check.svg'),
                        title: Text(
                          'Pets Allowed',
                          style: TextStyle(
                            fontSize: 12,
                            height: 22 / 12,
                            color: ColorPalette.brandBrown,
                          ),
                        ),
                        trailing: Text(
                          'Yes',
                          style: TextStyle(
                            fontSize: 12,
                            height: 22 / 12,
                            color: ColorPalette.brandBrown,
                          ),
                        ),
                      ),
                      ListTile(
                        leading: SvgPicture.asset(
                            COLORED_VECTORS_PATH + 'ic_check.svg'),
                        title: Text(
                          'Party Allowed',
                          style: TextStyle(
                            fontSize: 12,
                            height: 22 / 12,
                            color: ColorPalette.brandBrown,
                          ),
                        ),
                        trailing: Text(
                          'Yes',
                          style: TextStyle(
                            fontSize: 12,
                            height: 22 / 12,
                            color: ColorPalette.brandBrown,
                          ),
                        ),
                      ),
                      ListTile(
                        leading: SvgPicture.asset(
                            COLORED_VECTORS_PATH + 'ic_check.svg'),
                        title: Text(
                          'Children Allowed',
                          style: TextStyle(
                            fontSize: 12,
                            height: 22 / 12,
                            color: ColorPalette.brandBrown,
                          ),
                        ),
                        trailing: Text(
                          'Yes',
                          style: TextStyle(
                            fontSize: 12,
                            height: 22 / 12,
                            color: ColorPalette.brandBrown,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Text(
                    'Additional rules information',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      height: 23 / 14,
                      color: ColorPalette.brandBrown,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Text(
                    'Some additional rule information that the user may wan to leave for the customer in case they have some unique rule thet the default use cases do not cover',
                    style: TextStyle(
                      fontSize: 12,
                      height: 22 / 12,
                      color: Color(0xffa1a0a6),
                    ),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Text(
                    'Availability',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      height: 23 / 14,
                      color: ColorPalette.brandBrown,
                    ),
                  ),
                ),
                SizedBox(
                  height: 7,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Row(
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
                ),
                SizedBox(
                  height: 16,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Row(
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
                          color: ColorPalette.brandOrange,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Text(
                    '97 comments',
                    style: TextStyle(
                      fontSize: 12,
                      height: 22 / 12,
                      color: Color(0Xffa1a0a6),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Color(0xffff765e),
                      child: Text(
                        'A',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          height: 19.5 / 16,
                          color: ColorPalette.brandWhite,
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
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Color(0xffff765e),
                      child: Text(
                        'A',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          height: 19.5 / 16,
                          color: ColorPalette.brandWhite,
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
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Color(0xffff765e),
                      child: Text(
                        'A',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          height: 19.5 / 16,
                          color: ColorPalette.brandWhite,
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
                ),
                SizedBox(
                  height: 5,
                ),
                Align(
                  alignment: AlignmentDirectional.center,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
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
                ),
                SizedBox(
                  height: 151,
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              width: screenSize.width,
              padding: EdgeInsets.only(left: 38, right: 22) +
                  EdgeInsets.symmetric(vertical: 22),
              decoration: BoxDecoration(
                color: ColorPalette.brandWhite,
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
                  Text(
                    '\$172/night',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      height: 30 / 18,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed(RouteNames.PREVIEW);
                    },
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 17, horizontal: 24),
                      decoration: BoxDecoration(
                        color: ColorPalette.brandBrown,
                        borderRadius: BorderRadius.circular(26.5),
                      ),
                      child: Text(
                        'Reserve',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          height: 19.5 / 16,
                          color: ColorPalette.brandWhite,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
