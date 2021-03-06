import 'package:encostay/core/utilities/color_palette.dart';
import 'package:encostay/core/utilities/constants.dart';
import 'package:encostay/core/utilities/route_names.dart';
import 'package:encostay/core/widgets/atoms/profile_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HostProfileComponent extends StatelessWidget {
  const HostProfileComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorPalette.brandWhite,
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: true,
            backgroundColor: Colors.transparent,
            foregroundColor: ColorPalette.brandBrown,
            centerTitle: true,
            title: Text(
              'Profile',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                height: 30 / 18,
              ),
            ),
          ),
          SliverFillRemaining(
            child: SingleChildScrollView(
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
                    title: 'Edit Profile',
                    onTap: () {
                      Navigator.of(context).pushNamed(RouteNames.EDIT_PROFILE);
                    },
                  ),
                  ProfileItemTile(
                    title: 'Change Password',
                    onTap: () {
                      Navigator.of(context)
                          .pushNamed(RouteNames.CHANGE_PASSWORD);
                    },
                  ),
                  ProfileItemTile(
                    title: 'Payment Method',
                    onTap: () {
                      Navigator.of(context).pushNamed(RouteNames.ADD_PAYMENT);
                    },
                  ),
                  ProfileItemTile(
                    title: 'Transactions',
                    onTap: () {
                      Navigator.of(context)
                          .pushNamed(RouteNames.TRANSACTION_SUMMARY);
                    },
                  ),
                  ProfileItemTile(
                    title: 'My Listings',
                    onTap: () {
                      Navigator.of(context).pushNamed(RouteNames.HOST_LISTINGS);
                    },
                  ),
                  ProfileItemTile(
                    title: 'Contact Support',
                    onTap: () {
                      Navigator.of(context)
                          .pushNamed(RouteNames.CONTACT_SUPPORT);
                    },
                  ),
                  ProfileItemTile(
                    title: 'Log Out',
                    onTap: () {
                      Navigator.of(context)
                          .popUntil(ModalRoute.withName(RouteNames.AUTH));
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
