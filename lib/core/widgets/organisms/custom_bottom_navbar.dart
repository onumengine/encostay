import 'package:encostay/core/utilities/color_palette.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class CustomBottomNavbar extends StatelessWidget {
  final void Function(int selectedindex) onTap;

  CustomBottomNavbar({
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 57,
      padding: EdgeInsets.symmetric(vertical: 11, horizontal: 14),
      margin:
          EdgeInsets.symmetric(horizontal: 29) + EdgeInsets.only(bottom: 42),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(70),
        color: brandBrown,
      ),
      child: GNav(
        tabs: [
          GButton(
            icon: Icons.home_outlined,
            iconColor: brandWhite,
            text: 'Home',
            textColor: brandBrown,
            backgroundColor: brandWhite,
            gap: 16,
            padding: EdgeInsets.symmetric(vertical: 9, horizontal: 16),
          ),
          GButton(
            icon: Icons.filter_none_outlined,
            iconColor: brandWhite,
            text: 'Bookings',
            textColor: brandBrown,
            backgroundColor: brandWhite,
            gap: 16,
            padding: EdgeInsets.symmetric(vertical: 9, horizontal: 16),
          ),
          GButton(
            icon: Icons.near_me_outlined,
            iconColor: brandWhite,
            text: 'Messages',
            textColor: brandBrown,
            backgroundColor: brandWhite,
            gap: 16,
            padding: EdgeInsets.symmetric(vertical: 9, horizontal: 16),
          ),
          GButton(
            icon: Icons.person_outline_outlined,
            iconColor: brandWhite,
            text: 'Profile',
            textColor: brandBrown,
            backgroundColor: brandWhite,
            gap: 16,
            padding: EdgeInsets.symmetric(vertical: 9, horizontal: 16),
          ),
        ],
        onTabChange: (index) {
          onTap(index);
        },
        tabBorderRadius: 70,
        color: brandBrown,
      ),
    );
  }
}
