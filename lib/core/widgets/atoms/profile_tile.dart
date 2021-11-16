import 'package:encostay/core/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProfileItemTile extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  const ProfileItemTile({Key? key, required this.title, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Material(
        color: Colors.transparent,
        child: Container(
          height: MediaQuery.of(context).size.height * 0.08,
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.symmetric(horizontal: 20) +
              EdgeInsets.only(bottom: 10),
          padding: EdgeInsets.all(21),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(ORANGE_VECTORS_PATH + 'ic_orange_dot.svg'),
              SizedBox(
                width: 12,
              ),
              Text(title),
            ],
          ),
        ),
      ),
    );
  }
}
