import 'package:encostay/utilities/text_styles.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverList(
              delegate: SliverChildListDelegate([
                SizedBox(
                  height: kToolbarHeight,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 18, right: 28),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hey Olaitan!',
                            style: TextStyle(
                              fontSize: medium14.fontSize,
                              fontWeight: medium14.fontWeight,
                              height: 23 / 14,
                              color: Color(0xffaeafae),
                            ),
                          ),
                          Text(
                            'let\'s find your best residence!',
                            style: TextStyle(
                              fontSize: medium14.fontSize,
                              fontWeight: medium14.fontWeight,
                              height: 23 / 14,
                            ),
                          ),
                        ],
                      ),
                      CircleAvatar(
                        backgroundImage:
                            AssetImage('lib/assets/images/avatar.png'),
                        radius: 24,
                      ),
                    ],
                  ),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
