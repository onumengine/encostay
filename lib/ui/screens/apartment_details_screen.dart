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
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
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
                          padding: EdgeInsets.symmetric(
                              vertical: 11, horizontal: 17),
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
