import 'package:encostay/core/utilities/colors.dart';
import 'package:encostay/core/utilities/constants.dart';
import 'package:flutter/material.dart';

class HostHomeComponent extends StatelessWidget {
  const HostHomeComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          leading: IconButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Clicked hamburger menu'),
                ),
              );
            },
            icon: Icon(
              Icons.sort,
              color: hamburgerIconColor,
            ),
          ),
          title: Text(
            'Welcome Back Olaitan',
            style: TextStyle(
              fontSize: 12,
              height: 34 / 12,
              color: palehostText,
            ),
          ),
          actions: [
            CircleAvatar(
              backgroundImage: AssetImage(IMAGES_PATH + 'img_avatar.png'),
              radius: 24,
            ),
            SizedBox(width: 20),
          ],
        ),
        SliverList(delegate: SliverChildListDelegate([])),
        SliverToBoxAdapter(
          child: Container(
            height: 25,
            width: MediaQuery.of(context).size.width,
            color: Colors.orangeAccent,
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) => Container(
              color: Colors.redAccent,
              height: 100,
              width: 100,
            ),
          ),
        ),
      ],
    );
  }
}
