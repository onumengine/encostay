import 'package:encostay/utilities/colors.dart';
import 'package:flutter/material.dart';

class ApartmentDetailsScreen extends StatefulWidget {
  const ApartmentDetailsScreen({Key? key}) : super(key: key);

  @override
  _ApartmentDetailsScreenState createState() => _ApartmentDetailsScreenState();
}

class _ApartmentDetailsScreenState extends State<ApartmentDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: brandWhite,
      appBar: AppBar(
        backgroundColor: brandWhite,
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
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
        actions: <Widget>[
          RawMaterialButton(
            child: ImageIcon(
              AssetImage('lib/assets/images/save_icon.png'),
              color: brandOrange,
              size: 24,
            ),
            onPressed: () {},
            fillColor: brandWhite,
            shape: CircleBorder(),
          ),
        ],
      ),
      body: SafeArea(
        child: Center(
          child: Text('Apartment Details'),
        ),
      ),
    );
  }
}
