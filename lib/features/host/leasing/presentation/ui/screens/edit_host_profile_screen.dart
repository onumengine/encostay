import 'package:encostay/core/utilities/color_palette.dart';
import 'package:encostay/core/utilities/constants.dart';
import 'package:encostay/core/utilities/route_names.dart';
import 'package:encostay/core/widgets/atoms/brand_button.dart';
import 'package:encostay/core/widgets/atoms/profile_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EditHostProfileScreen extends StatefulWidget {
  const EditHostProfileScreen({Key? key}) : super(key: key);

  @override
  _EditHostProfileScreenState createState() => _EditHostProfileScreenState();
}

class _EditHostProfileScreenState extends State<EditHostProfileScreen> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: ColorPalette.brandWhite,
      appBar: AppBar(
        title: Text(
          'Edit Profile',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            height: 30 / 18,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        foregroundColor: ColorPalette.brandBrown,
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: SvgPicture.asset(
                    VECTOR_IMAGES_PATH + 'owner.svg',
                    height: 90,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 21),
                  child: Text(
                    'Robert Bowie',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      height: 34 / 24,
                      color: ColorPalette.lightTextColor,
                    ),
                  ),
                ),
                ProfileItemTile(
                  iconPath: COLORED_VECTORS_PATH + 'ic_edit_pencil.svg',
                  title: 'Change Password',
                  onTap: () {
                    Navigator.of(context).pushNamed(RouteNames.CHANGE_PASSWORD);
                  },
                ),
                ProfileItemTile(
                  iconPath: COLORED_VECTORS_PATH + 'ic_edit_pencil.svg',
                  title: 'Change Password',
                  onTap: () {
                    Navigator.of(context).pushNamed(RouteNames.CHANGE_PASSWORD);
                  },
                ),
                ProfileItemTile(
                  iconPath: COLORED_VECTORS_PATH + 'ic_edit_pencil.svg',
                  title: 'Change Password',
                  onTap: () {
                    Navigator.of(context).pushNamed(RouteNames.CHANGE_PASSWORD);
                  },
                ),
                ProfileItemTile(
                  iconPath: COLORED_VECTORS_PATH + 'ic_edit_pencil.svg',
                  title: 'Change Password',
                  onTap: () {
                    Navigator.of(context).pushNamed(RouteNames.CHANGE_PASSWORD);
                  },
                ),
                SizedBox(
                  height: screenSize.height / 18.54,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: BrandButton(
                    child: Text(
                      'Save',
                      style: TextStyle(
                        color: ColorPalette.brandWhite,
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        height: 24.55 / 18,
                      ),
                    ),
                    onTap: () {},
                    width: screenSize.width,
                    color: ColorPalette.brandOrange,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
