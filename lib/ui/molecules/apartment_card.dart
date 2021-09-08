import 'package:encostay/ui/atoms/flat_iconbutton.dart';
import 'package:encostay/utilities/colors.dart';
import 'package:flutter/material.dart';

class ApartmentCard extends StatefulWidget {
  const ApartmentCard({Key? key}) : super(key: key);

  @override
  _ApartmentCardState createState() => _ApartmentCardState();
}

class _ApartmentCardState extends State<ApartmentCard> {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 0.65,
      child: Container(
        width: MediaQuery.of(context).size.width / 1.74,
        padding: EdgeInsets.fromLTRB(12, 11, 13, 20),
        decoration: BoxDecoration(
          color: brandWhite,
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 0.872,
              child: Stack(
                alignment: AlignmentDirectional.center,
                fit: StackFit.expand,
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image(
                      image: AssetImage('lib/assets/images/apartment_pic.png'),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Marvin House',
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w600,
                    height: 18 / 10,
                  ),
                ),
                RichText(
                  text: TextSpan(
                    style: TextStyle(
                      fontSize: 8,
                      height: 18 / 8,
                      color: Color(0xffa1a0a6),
                    ),
                    children: [
                      TextSpan(
                        text: '\$230 ',
                        style: TextStyle(
                          color: brandOrange,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          height: 23 / 14,
                        ),
                      ),
                      TextSpan(text: '/ Day'),
                    ],
                  ),
                ),
              ],
            ),
            Align(
              alignment: AlignmentDirectional.centerStart,
              child: Text(
                'Lagos, Nigeria',
                style: TextStyle(
                  fontSize: 8,
                  height: 18 / 8,
                ),
              ),
            ),
            SizedBox(height: 9),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FlatIconButton(
                  iconPath: 'lib/assets/images/bedroom_icon.png',
                  text: '3 Bedroom',
                ),
                FlatIconButton(
                  iconPath: 'lib/assets/images/wifi_icon.png',
                  text: 'Wifi',
                ),
                Container(
                  height: 18,
                  width: 18,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: brandOrange,
                  ),
                  child: ImageIcon(
                    AssetImage('lib/assets/images/arrow_icon.png'),
                    color: brandWhite,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}