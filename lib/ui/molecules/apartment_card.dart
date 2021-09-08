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
                    borderRadius: BorderRadius.circular(20),
                    child: Image(
                      image: AssetImage('lib/assets/images/apartment_pic.png'),
                    ),
                  ),
                ],
              ),
            ),
            Row(),
            Text(''),
            Row(),
          ],
        ),
      ),
    );
  }
}
