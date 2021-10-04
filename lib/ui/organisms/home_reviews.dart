import 'package:flutter/material.dart';

class HomeReviewsComponent extends StatefulWidget {
  const HomeReviewsComponent({Key? key}) : super(key: key);

  @override
  _HomeReviewsComponentState createState() => _HomeReviewsComponentState();
}

class _HomeReviewsComponentState extends State<HomeReviewsComponent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('HomeReviewsComponent'),
      ),
    );
  }
}
